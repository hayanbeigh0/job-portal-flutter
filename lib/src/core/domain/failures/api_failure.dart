import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
sealed class ApiFailure with _$ApiFailure {
  const factory ApiFailure.serverError([String? message]) = _ServerError;
  const factory ApiFailure.networkError([String? message]) = _NetworkError;
  const factory ApiFailure.unauthorized([String? message]) = _Unauthorized;
  const factory ApiFailure.notFound([String? message]) = _NotFound;
  const factory ApiFailure.badRequest([String? message]) = _BadRequest;
  const factory ApiFailure.unknown([String? message]) = _Unknown;
}
