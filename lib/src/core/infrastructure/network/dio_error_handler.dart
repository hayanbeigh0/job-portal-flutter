import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/failures/api_failure.dart';

class DioErrorHandler {
  static Either<ApiFailure, T> handleError<T>(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return left(
          const ApiFailure.networkError(
            'Connection timeout. Please check your internet connection.',
          ),
        );

      case DioExceptionType.connectionError:
        return left(
          const ApiFailure.networkError(
            'No internet connection. Please try again.',
          ),
        );

      case DioExceptionType.badResponse:
        return _handleResponseError(error);

      case DioExceptionType.cancel:
        return left(const ApiFailure.unknown('Request cancelled'));

      default:
        return left(
          const ApiFailure.unknown(
            'Something went wrong. Please try again.',
          ),
        );
    }
  }

  static Either<ApiFailure, T> _handleResponseError<T>(DioException error) {
    final statusCode = error.response?.statusCode;
    final message = _extractErrorMessage(error.response?.data);

    switch (statusCode) {
      case 400:
        return left(ApiFailure.badRequest(message ?? 'Invalid request'));
      case 401:
        return left(
          ApiFailure.unauthorized(message ?? 'Unauthorized access'),
        );
      case 404:
        return left(ApiFailure.notFound(message ?? 'Resource not found'));
      case 500:
      case 502:
      case 503:
        return left(
          ApiFailure.serverError(
            message ?? 'Server error. Please try again later.',
          ),
        );
      default:
        return left(
          ApiFailure.unknown(
            message ?? 'Something went wrong. Please try again.',
          ),
        );
    }
  }

  static String? _extractErrorMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      return data['message'] as String? ??
          data['error'] as String? ??
          data['msg'] as String?;
    }
    return null;
  }
}
