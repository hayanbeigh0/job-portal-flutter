import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_profile.dart';

part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
sealed class UserProfileDto with _$UserProfileDto {
  const UserProfileDto._();

  const factory UserProfileDto({
    required String id,
    required String name,
    required String phoneNumber,
    required List<String> skills,
    required String location,
    String? voiceIntroUrl,
    String? videoIntroUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserProfileDto;

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  UserProfile toDomain() {
    return UserProfile(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      skills: skills,
      location: location,
      voiceIntroUrl: voiceIntroUrl,
      videoIntroUrl: videoIntroUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
