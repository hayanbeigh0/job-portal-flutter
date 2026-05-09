part of 'jobs_list_bloc.dart';

@freezed
sealed class JobsListEvent with _$JobsListEvent {
  const factory JobsListEvent.loadJobs() = _LoadJobs;
  const factory JobsListEvent.loadMore() = _LoadMore;
  const factory JobsListEvent.refresh() = _Refresh;
  // Fired by WebSocket when a job's applicantsCount changes
  const factory JobsListEvent.jobUpdated({
    required String jobId,
    required int applicantsCount,
  }) = _JobUpdated;
  // Fired by WebSocket when a new job is posted
  const factory JobsListEvent.newJobArrived({required Job job}) = _NewJobArrived;
}
