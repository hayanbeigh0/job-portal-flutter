import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../jobs/domain/entities/job.dart';
import 'user_profile.dart';

part 'user_activity.freezed.dart';

@freezed
sealed class UserActivity with _$UserActivity {
  const factory UserActivity({
    required UserProfile profile,
    required List<ApplicationEntry> applications,
  }) = _UserActivity;
}

@freezed
sealed class ApplicationEntry with _$ApplicationEntry {
  const factory ApplicationEntry({
    required String id,
    required String status,
    required DateTime appliedAt,
    Job? job,
  }) = _ApplicationEntry;
}
