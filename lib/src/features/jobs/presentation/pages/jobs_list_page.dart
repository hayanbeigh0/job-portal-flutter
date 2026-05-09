import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/router/app_router.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';
import '../../application/jobs_list_bloc/jobs_list_bloc.dart';
import '../widgets/job_card.dart';
import '../widgets/job_list_shimmer.dart';

class JobsListPageView extends StatefulWidget {
  const JobsListPageView({super.key});

  @override
  State<JobsListPageView> createState() => _JobsListPageViewState();
}

class _JobsListPageViewState extends State<JobsListPageView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<JobsListBloc>().add(const JobsListEvent.loadJobs());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<JobsListBloc>().add(const JobsListEvent.loadMore());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    return _scrollController.offset >=
        _scrollController.position.maxScrollExtent * 0.9;
  }

  Future<void> _onRefresh() async {
    context.read<JobsListBloc>().add(const JobsListEvent.refresh());
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Available Jobs'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.person_outline),
              tooltip: 'Profile',
              onPressed: () => context.router.push(const ProfileRoute()),
            ),
          ],
        ),
        body: BlocConsumer<JobsListBloc, JobsListState>(
          listener: (context, state) {
            if (state.failure != null && state.jobs.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Failed to load more jobs.'),
                  backgroundColor: theme.colorScheme.error,
                  action: SnackBarAction(
                    label: 'Retry',
                    onPressed: () => context
                        .read<JobsListBloc>()
                        .add(const JobsListEvent.loadMore()),
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading && state.jobs.isEmpty) {
              return const JobListShimmer();
            }

            if (state.failure != null && state.jobs.isEmpty) {
              return _buildEmptyState(theme, isError: true);
            }

            if (state.jobs.isEmpty && !state.isLoading) {
              return _buildEmptyState(theme);
            }

            return RefreshIndicator(
              onRefresh: _onRefresh,
              child: ListView.separated(
                controller: _scrollController,
                padding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                itemCount:
                    state.jobs.length + (state.isLoadingMore ? 1 : 0),
                separatorBuilder: (_, _) => SizedBox(height: 12.h),
                itemBuilder: (context, index) {
                  if (index >= state.jobs.length) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: const Center(child: LoadingIndicator()),
                    );
                  }
                  final job = state.jobs[index];
                  return JobCard(
                    job: job,
                    onTap: () =>
                        context.router.push(JobDetailsRoute(jobId: job.id)),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme, {bool isError = false}) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isError ? Icons.wifi_off_outlined : Icons.work_outline,
              size: 80.w,
              color: isError
                  ? theme.colorScheme.error
                  : theme.textTheme.bodySmall?.color,
            ),
            SizedBox(height: 24.h),
            Text(
              isError ? 'Failed to Load Jobs' : 'No Jobs Available',
              style: theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.h),
            Text(
              isError
                  ? 'Check your connection and try again.'
                  : 'No job openings at the moment. Check back later.',
              style: theme.textTheme.bodyMedium
                  ?.copyWith(color: theme.textTheme.bodySmall?.color),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.h),
            FilledButton.icon(
              onPressed: () => context
                  .read<JobsListBloc>()
                  .add(const JobsListEvent.loadJobs()),
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
