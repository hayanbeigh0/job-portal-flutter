import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/domain/failures/api_failure.dart';
import '../../../../core/infrastructure/websocket/websocket_service.dart';
import '../../domain/entities/job.dart';
import '../../domain/repositories/i_jobs_repository.dart';

part 'jobs_list_event.dart';
part 'jobs_list_state.dart';
part 'jobs_list_bloc.freezed.dart';

@injectable
class JobsListBloc extends Bloc<JobsListEvent, JobsListState> {
  final IJobsRepository _jobsRepository;
  final WebSocketService _wsService;

  StreamSubscription<Map<String, dynamic>>? _jobUpdatesSub;
  StreamSubscription<Map<String, dynamic>>? _newJobsSub;

  static const int _pageLimit = 20;

  JobsListBloc(this._jobsRepository, this._wsService)
      : super(JobsListState.initial()) {
    on<JobsListEvent>((event, emit) async {
      await event.maybeMap(
        loadJobs: (_) async => await _loadJobs(emit),
        loadMore: (_) async => await _loadMore(emit),
        refresh: (_) async => await _refresh(emit),
        jobUpdated: (e) async => _onJobUpdated(e, emit),
        newJobArrived: (e) async => _onNewJobArrived(e, emit),
        orElse: () async {},
      );
    });

    _subscribeToWebSocket();
  }

  // ─── WebSocket ────────────────────────────────────────────────────────────

  void _subscribeToWebSocket() {
    _jobUpdatesSub = _wsService.jobUpdates.listen((data) {
      final jobId = data['jobId'] as String?;
      final count = data['applicantsCount'] as int?;
      if (jobId != null && count != null) {
        add(JobsListEvent.jobUpdated(jobId: jobId, applicantsCount: count));
      }
    });

    _newJobsSub = _wsService.newJobs.listen((data) {
      try {
        final id = data['id'] as String? ?? data['_id'] as String?;
        if (id == null) return;
        if (state.jobs.any((j) => j.id == id)) return;

        final job = Job(
          id: id,
          title: data['title'] as String? ?? '',
          company: data['company'] as String? ?? '',
          description: data['description'] as String? ?? '',
          location: data['location'] as String? ?? '',
          salary: data['salary'] as String? ?? '',
          requirements: List<String>.from(data['requirements'] as List? ?? []),
          postedDate:
              DateTime.tryParse(data['postedDate'] as String? ?? '') ??
                  DateTime.now(),
          applicantsCount: data['applicantsCount'] as int? ?? 0,
          status: data['status'] as String? ?? 'active',
        );
        add(JobsListEvent.newJobArrived(job: job));
      } catch (_) {}
    });
  }

  void _onJobUpdated(_JobUpdated event, Emitter<JobsListState> emit) {
    final updated = state.jobs.map((job) {
      if (job.id == event.jobId) {
        return job.copyWith(applicantsCount: event.applicantsCount);
      }
      return job;
    }).toList();
    emit(state.copyWith(jobs: updated));
  }

  void _onNewJobArrived(_NewJobArrived event, Emitter<JobsListState> emit) {
    emit(state.copyWith(jobs: [event.job, ...state.jobs]));
  }

  // ─── API ──────────────────────────────────────────────────────────────────

  Future<void> _loadJobs(Emitter<JobsListState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));

    final result = await _jobsRepository.getJobs(page: 1, limit: _pageLimit);

    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (jobs) => emit(state.copyWith(
        isLoading: false,
        jobs: jobs,
        currentPage: 1,
        hasMore: jobs.length >= _pageLimit,
        failure: null,
      )),
    );
  }

  Future<void> _loadMore(Emitter<JobsListState> emit) async {
    if (state.isLoadingMore || !state.hasMore) return;

    emit(state.copyWith(isLoadingMore: true, failure: null));

    final nextPage = state.currentPage + 1;
    final result =
        await _jobsRepository.getJobs(page: nextPage, limit: _pageLimit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoadingMore: false, failure: failure)),
      (newJobs) => emit(state.copyWith(
        isLoadingMore: false,
        jobs: [...state.jobs, ...newJobs],
        currentPage: nextPage,
        hasMore: newJobs.length >= _pageLimit,
        failure: null,
      )),
    );
  }

  Future<void> _refresh(Emitter<JobsListState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));

    final result = await _jobsRepository.getJobs(page: 1, limit: _pageLimit);

    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (jobs) => emit(state.copyWith(
        isLoading: false,
        jobs: jobs,
        currentPage: 1,
        hasMore: jobs.length >= _pageLimit,
        failure: null,
      )),
    );
  }

  @override
  Future<void> close() async {
    await _jobUpdatesSub?.cancel();
    await _newJobsSub?.cancel();
    return super.close();
  }
}
