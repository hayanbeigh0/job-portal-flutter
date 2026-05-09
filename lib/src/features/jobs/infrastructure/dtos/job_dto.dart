import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/job.dart';

part 'job_dto.freezed.dart';
part 'job_dto.g.dart';

@freezed
sealed class JobDto with _$JobDto {
  const JobDto._();

  const factory JobDto({
    required String id,
    required String title,
    required String company,
    required String description,
    required String location,
    required String salary,
    required List<String> requirements,
    required DateTime postedDate,
    required int applicantsCount,
    required String status,
    @Default(false) bool hasApplied,
  }) = _JobDto;

  factory JobDto.fromJson(Map<String, dynamic> json) =>
      _$JobDtoFromJson(json);

  Job toDomain() {
    return Job(
      id: id,
      title: title,
      company: company,
      description: description,
      location: location,
      salary: salary,
      requirements: requirements,
      postedDate: postedDate,
      applicantsCount: applicantsCount,
      status: status,
      hasApplied: hasApplied,
    );
  }
}
