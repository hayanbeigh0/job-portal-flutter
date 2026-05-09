import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../../../core/infrastructure/network/api_client.dart';
import '../../../../core/infrastructure/network/dio_error_handler.dart';
import '../../../../features/jobs/infrastructure/dtos/job_dto.dart';
import '../../domain/entities/user_activity.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/i_profile_repository.dart';
import '../dtos/user_profile_dto.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final ApiClient _apiClient;

  ProfileRepository(this._apiClient);

  @override
  Future<Either<ApiFailure, UserProfile>> getProfile() async {
    try {
      final response = await _apiClient.get('/profile');
      final profile = UserProfileDto.fromJson(
        response.data['profile'] as Map<String, dynamic>,
      ).toDomain();
      return right(profile);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('ProfileRepository.getProfile error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, UserActivity>> getActivity() async {
    try {
      final response = await _apiClient.get('/profile/activity');
      final profile = UserProfileDto.fromJson(
        response.data['profile'] as Map<String, dynamic>,
      ).toDomain();

      final appsJson = response.data['applications'] as List<dynamic>? ?? [];
      final applications = appsJson.map((a) {
        final map = a as Map<String, dynamic>;
        final jobMap = map['job'] as Map<String, dynamic>?;
        return ApplicationEntry(
          id: map['id'] as String,
          status: map['status'] as String,
          appliedAt: DateTime.parse(map['appliedAt'] as String),
          job: jobMap != null ? JobDto.fromJson(jobMap).toDomain() : null,
        );
      }).toList();

      return right(UserActivity(profile: profile, applications: applications));
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('ProfileRepository.getActivity error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, UserProfile>> updateProfile({
    required String name,
    required List<String> skills,
    required String location,
    String? voiceIntroUrl,
    String? videoIntroUrl,
  }) async {
    try {
      final response = await _apiClient.put(
        '/profile',
        data: {
          'name': name,
          'skills': skills,
          'location': location,
          'voiceIntroUrl': ?voiceIntroUrl,
          'videoIntroUrl': ?videoIntroUrl,
        },
      );
      final profile = UserProfileDto.fromJson(
        response.data['profile'] as Map<String, dynamic>,
      ).toDomain();
      return right(profile);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('ProfileRepository.updateProfile error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }
}
