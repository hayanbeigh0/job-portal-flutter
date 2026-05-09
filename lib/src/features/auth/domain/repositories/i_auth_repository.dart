import 'package:dartz/dartz.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../entities/auth_user.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailure, String>> sendOtp(String phoneNumber);
  Future<Either<ApiFailure, AuthUser>> verifyOtp(
    String phoneNumber,
    String otp,
  );
  Future<Either<ApiFailure, AuthUser>> getCurrentUser();
  Future<void> signOut();
}
