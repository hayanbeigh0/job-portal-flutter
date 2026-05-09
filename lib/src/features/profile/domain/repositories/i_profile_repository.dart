import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../entities/user_activity.dart';
import '../entities/user_profile.dart';

abstract class IProfileRepository {
  Future<Either<ApiFailure, UserProfile>> getProfile();
  Future<Either<ApiFailure, UserProfile>> updateProfile({
    required String name,
    required List<String> skills,
    required String location,
    String? voiceIntroUrl,
    String? videoIntroUrl,
  });
  Future<Either<ApiFailure, UserActivity>> getActivity();
}
