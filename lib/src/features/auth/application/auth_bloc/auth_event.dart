part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = _CheckAuthStatus;
  const factory AuthEvent.signOut() = _SignOut;
  /// Called after OTP verify — sets the user directly without a network call.
  const factory AuthEvent.userAuthenticated(AuthUser user) = _UserAuthenticated;
}
