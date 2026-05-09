import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show debugPrint;
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../../../core/infrastructure/auth/jwt_token_store.dart';
import '../../../../core/infrastructure/network/api_client.dart';
import '../../../../core/infrastructure/network/dio_error_handler.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../dtos/auth_user_dto.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final ApiClient _apiClient;
  final JwtTokenStore _tokenStore;

  AuthRepository(this._apiClient, this._tokenStore);

  @override
  Future<Either<ApiFailure, String>> sendOtp(String phoneNumber) async {
    try {
      final response = await _apiClient.post(
        '/auth/send-otp',
        data: {'phoneNumber': phoneNumber},
      );

      final message = response.data['message'] as String;
      final otp = response.data['otp'];
      if (otp != null) debugPrint('🔑 OTP for $phoneNumber: $otp');
      return right(message);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('AuthRepository.sendOtp error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, AuthUser>> verifyOtp(
    String phoneNumber,
    String otp,
  ) async {
    try {
      final response = await _apiClient.post(
        '/auth/verify-otp',
        data: {
          'phoneNumber': phoneNumber,
          'otp': otp,
        },
      );

      final token = response.data['token'] as String;
      final userJson = response.data['user'] as Map<String, dynamic>;

      await _tokenStore.saveToken(token);
      await _tokenStore.saveUserId(userJson['id'] as String);

      final user = AuthUserDto.fromJson(userJson).toDomain();
      return right(user);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('AuthRepository.verifyOtp error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<ApiFailure, AuthUser>> getCurrentUser() async {
    try {
      final response = await _apiClient.get('/auth/me');
      final userJson = response.data['user'] as Map<String, dynamic>;
      final user = AuthUserDto.fromJson(userJson).toDomain();
      return right(user);
    } on DioException catch (e) {
      return DioErrorHandler.handleError(e);
    } catch (e, st) {
      debugPrint('AuthRepository.getCurrentUser error: $e\n$st');
      return left(ApiFailure.unknown(e.toString()));
    }
  }

  @override
  Future<void> signOut() async {
    await _tokenStore.clearToken();
  }
}
