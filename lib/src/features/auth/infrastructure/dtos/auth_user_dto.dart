import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_user.dart';

part 'auth_user_dto.freezed.dart';
part 'auth_user_dto.g.dart';

@freezed
sealed class AuthUserDto with _$AuthUserDto {
  const AuthUserDto._();

  const factory AuthUserDto({
    required String id,
    required String phoneNumber,
    String? name,
    required bool isProfileComplete,
    required DateTime createdAt,
  }) = _AuthUserDto;

  factory AuthUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserDtoFromJson(json);

  factory AuthUserDto.fromDomain(AuthUser user) {
    return AuthUserDto(
      id: user.id,
      phoneNumber: user.phoneNumber,
      name: user.name,
      isProfileComplete: user.isProfileComplete,
      createdAt: user.createdAt,
    );
  }

  AuthUser toDomain() {
    return AuthUser(
      id: id,
      phoneNumber: phoneNumber,
      name: name,
      isProfileComplete: isProfileComplete,
      createdAt: createdAt,
    );
  }
}
