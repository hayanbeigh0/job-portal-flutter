part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String name,
    required List<String> skills,
    required String location,
    required bool isLoading,
    required bool isSubmitting,
    required bool isSuccess,
    UserProfile? profile,
    ApiFailure? failure,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        name: '',
        skills: [],
        location: '',
        isLoading: false,
        isSubmitting: false,
        isSuccess: false,
      );
}
