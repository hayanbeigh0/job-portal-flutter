import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../../../core/infrastructure/websocket/websocket_service.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/i_auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;
  final WebSocketService _wsService;

  LoginBloc(this._authRepository, this._wsService)
      : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        phoneNumberChanged: (e) async => _phoneNumberChanged(e, emit),
        otpChanged: (e) async => _otpChanged(e, emit),
        sendOtpPressed: (e) async => await _sendOtp(emit),
        verifyOtpPressed: (e) async => await _verifyOtp(emit),
      );
    });
  }

  void _phoneNumberChanged(_PhoneNumberChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber, failure: null));
  }

  void _otpChanged(_OtpChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(otp: event.otp, failure: null));
  }

  Future<void> _sendOtp(Emitter<LoginState> emit) async {
    emit(state.copyWith(isSubmitting: true, failure: null));

    final result = await _authRepository.sendOtp(state.phoneNumber);

    result.fold(
      (failure) => emit(state.copyWith(isSubmitting: false, failure: failure)),
      (_) => emit(state.copyWith(isSubmitting: false, otpSent: true, failure: null)),
    );
  }

  Future<void> _verifyOtp(Emitter<LoginState> emit) async {
    emit(state.copyWith(isSubmitting: true, failure: null));

    final result = await _authRepository.verifyOtp(state.phoneNumber, state.otp);

    await result.fold(
      (failure) async =>
          emit(state.copyWith(isSubmitting: false, failure: failure)),
      (user) async {
        // Token is now saved — connect WebSocket immediately
        try {
          await _wsService.connect();
        } catch (_) {
          // Non-fatal
        }
        emit(state.copyWith(isSubmitting: false, successUser: user, failure: null));
      },
    );
  }
}
