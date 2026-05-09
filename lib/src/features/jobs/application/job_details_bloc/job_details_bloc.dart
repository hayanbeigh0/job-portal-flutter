import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../domain/entities/job.dart';
import '../../domain/repositories/i_jobs_repository.dart';

part 'job_details_event.dart';
part 'job_details_state.dart';
part 'job_details_bloc.freezed.dart';

@injectable
class JobDetailsBloc extends Bloc<JobDetailsEvent, JobDetailsState> {
  final IJobsRepository _jobsRepository;

  JobDetailsBloc(this._jobsRepository) : super(JobDetailsState.initial()) {
    on<JobDetailsEvent>((event, emit) async {
      await event.map(
        loadJobDetails: (e) async => await _loadJobDetails(e, emit),
        applyToJob: (e) async => await _applyToJob(e, emit),
      );
    });
  }

  Future<void> _loadJobDetails(
    _LoadJobDetails event,
    Emitter<JobDetailsState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
    ));

    final result = await _jobsRepository.getJobDetails(event.jobId);

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        failure: failure,
      )),
      (job) => emit(state.copyWith(
        isLoading: false,
        job: job,
        hasApplied: job.hasApplied,
        justApplied: false,
        failure: null,
      )),
    );
  }

  Future<void> _applyToJob(
    _ApplyToJob event,
    Emitter<JobDetailsState> emit,
  ) async {
    emit(state.copyWith(
      isApplying: true,
      justApplied: false,
      failure: null,
    ));

    final result = await _jobsRepository.applyToJob(event.jobId);

    result.fold(
      (failure) => emit(state.copyWith(
        isApplying: false,
        failure: failure,
      )),
      (_) => emit(state.copyWith(
        isApplying: false,
        justApplied: true,
        hasApplied: true,
        job: state.job?.copyWith(
          applicantsCount: (state.job?.applicantsCount ?? 0) + 1,
          hasApplied: true,
        ),
        failure: null,
      )),
    );
  }
}
