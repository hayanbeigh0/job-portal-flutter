import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';

@freezed
sealed class Job with _$Job {
  const factory Job({
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
  }) = _Job;
}
