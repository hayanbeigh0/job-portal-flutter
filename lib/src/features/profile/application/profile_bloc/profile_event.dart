part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.nameChanged(String name) = _NameChanged;
  const factory ProfileEvent.skillsChanged(List<String> skills) =
      _SkillsChanged;
  const factory ProfileEvent.locationChanged(String location) =
      _LocationChanged;
  const factory ProfileEvent.loadProfile() = _LoadProfile;
  const factory ProfileEvent.submitProfile() = _SubmitProfile;
}
