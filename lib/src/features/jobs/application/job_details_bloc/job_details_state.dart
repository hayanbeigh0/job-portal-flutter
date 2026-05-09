part of 'job_details_bloc.dart';

@freezed
sealed class JobDetailsState with _$JobDetailsState {
  const factory JobDetailsState({
    Job? job,
    required bool isLoading,
    required bool isApplying,
    /// True when the user applied in THIS session — triggers the snackbar.
    required bool justApplied,
    /// True when the job was already applied to (from API or after justApplied).
    required bool hasApplied,
    ApiFailure? failure,
  }) = _JobDetailsState;

  factory JobDetailsState.initial() => const JobDetailsState(
        isLoading: false,
        isApplying: false,
        justApplied: false,
        hasApplied: false,
      );
}
