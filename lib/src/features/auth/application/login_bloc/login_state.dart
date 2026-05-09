part of 'login_bloc.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    required String phoneNumber,
    required String otp,
    required bool otpSent,
    required bool isSubmitting,
    ApiFailure? failure,
    AuthUser? successUser,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        phoneNumber: '',
        otp: '',
        otpSent: false,
        isSubmitting: false,
      );
}
