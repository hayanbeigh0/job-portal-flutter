part of 'jobs_list_bloc.dart';

@freezed
sealed class JobsListState with _$JobsListState {
  const factory JobsListState({
    required List<Job> jobs,
    required int currentPage,
    required bool hasMore,
    required bool isLoading,
    required bool isLoadingMore,
    ApiFailure? failure,
  }) = _JobsListState;

  factory JobsListState.initial() => const JobsListState(
        jobs: [],
        currentPage: 0,
        hasMore: true,
        isLoading: false,
        isLoadingMore: false,
      );
}
