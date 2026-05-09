import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/job_application.dart';

part 'job_application_dto.freezed.dart';
part 'job_application_dto.g.dart';

@freezed
sealed class JobApplicationDto with _$JobApplicationDto {
  const JobApplicationDto._();

  const factory JobApplicationDto({
    required String id,
    required String jobId,
    required String userId,
    required String status,
    required DateTime appliedAt,
  }) = _JobApplicationDto;

  factory JobApplicationDto.fromJson(Map<String, dynamic> json) =>
      _$JobApplicationDtoFromJson(json);

  JobApplication toDomain() {
    return JobApplication(
      id: id,
      jobId: jobId,
      userId: userId,
      status: status,
      appliedAt: appliedAt,
    );
  }
}
