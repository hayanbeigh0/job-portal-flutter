part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;
  const factory LoginEvent.otpChanged(String otp) = _OtpChanged;
  const factory LoginEvent.sendOtpPressed() = _SendOtpPressed;
  const factory LoginEvent.verifyOtpPressed() = _VerifyOtpPressed;
}
