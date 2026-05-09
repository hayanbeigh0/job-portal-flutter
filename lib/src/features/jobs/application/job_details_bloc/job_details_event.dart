part of 'job_details_bloc.dart';

@freezed
sealed class JobDetailsEvent with _$JobDetailsEvent {
  const factory JobDetailsEvent.loadJobDetails(String jobId) = _LoadJobDetails;
  const factory JobDetailsEvent.applyToJob(String jobId) = _ApplyToJob;
}
