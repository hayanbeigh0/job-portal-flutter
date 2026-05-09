import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/websocket/websocket_service.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/i_auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final WebSocketService _wsService;

  AuthBloc(this._authRepository, this._wsService)
      : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkAuthStatus: (e) async => await _checkAuthStatus(emit),
        signOut: (e) async => await _signOut(emit),
        userAuthenticated: (e) async => await _userAuthenticated(e, emit),
      );
    });
  }

  Future<void> _checkAuthStatus(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _authRepository.getCurrentUser();

    await result.fold(
      (failure) async => emit(const AuthState.unauthenticated()),
      (user) async {
        emit(AuthState.authenticated(user));
        // Connect WebSocket now that we have a valid token
        try {
          await _wsService.connect();
        } catch (_) {
        }
      },
    );
  }

  Future<void> _userAuthenticated(
    _UserAuthenticated event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.authenticated(event.user));
    try {
      await _wsService.connect();
    } catch (_) {}
  }

  Future<void> _signOut(Emitter<AuthState> emit) async {
    await _wsService.disconnect();
    await _authRepository.signOut();
    emit(const AuthState.unauthenticated());
  }
}
