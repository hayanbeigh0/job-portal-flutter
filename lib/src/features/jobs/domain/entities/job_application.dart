import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_application.freezed.dart';

@freezed
sealed  class JobApplication with _$JobApplication {
  const factory JobApplication({
    required String id,
    required String jobId,
    required String userId,
    required String status,
    required DateTime appliedAt,
  }) = _JobApplication;
}
