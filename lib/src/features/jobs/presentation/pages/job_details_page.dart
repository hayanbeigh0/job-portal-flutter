import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../app/injection.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';
import '../../application/job_details_bloc/job_details_bloc.dart';

class JobDetailsPageView extends StatelessWidget {
  final String jobId;

  const JobDetailsPageView({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JobDetailsBloc>()
        ..add(JobDetailsEvent.loadJobDetails(jobId)),
      child: _JobDetailsView(jobId: jobId),
    );
  }
}

class _JobDetailsView extends StatefulWidget {
  final String jobId;

  const _JobDetailsView({required this.jobId});

  @override
  State<_JobDetailsView> createState() => _JobDetailsViewState();
}

class _JobDetailsViewState extends State<_JobDetailsView> {
  @override
  void initState() {
    super.initState();
  }

  void _handleApply() {
    context.read<JobDetailsBloc>().add(JobDetailsEvent.applyToJob(widget.jobId));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.router.pop(),
        ),
      ),
      body: BlocConsumer<JobDetailsBloc, JobDetailsState>(
        listener: (context, state) {
          if (state.failure != null && !state.hasApplied) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Failed to process request. Please try again.'),
                backgroundColor: theme.colorScheme.error,
              ),
            );
          }

          // Only show snackbar when user just applied in this session
          if (state.justApplied) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Application submitted successfully!'),
                backgroundColor: theme.colorScheme.secondary,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading && state.job == null) {
            return const FullScreenLoadingIndicator(
              message: 'Loading job details...',
            );
          }

          if (state.job == null) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 80.w,
                      color: theme.colorScheme.error,
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Job Not Found',
                      style: theme.textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'The job you are looking for does not exist or has been removed.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.textTheme.bodySmall?.color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24.h),
                    CustomButton(
                      text: 'Go Back',
                      onPressed: () => context.router.pop(),
                      type: ButtonType.outlined,
                    ),
                  ],
                ),
              ),
            );
          }

          final job = state.job!;
          final dateFormat = DateFormat('MMM dd, yyyy');

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      Text(
                        job.title,
                        style: theme.textTheme.displaySmall,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        job.company,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: theme.primaryColor,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Wrap(
                        spacing: 16.w,
                        runSpacing: 8.h,
                        children: [
                          _buildInfoChip(
                            context,
                            Icons.location_on_outlined,
                            job.location,
                          ),
                          _buildInfoChip(
                            context,
                            Icons.attach_money,
                            job.salary,
                          ),
                          _buildInfoChip(
                            context,
                            Icons.calendar_today_outlined,
                            dateFormat.format(job.postedDate),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      _buildInfoChip(
                        context,
                        Icons.people_outline,
                        '${job.applicantsCount} applicants',
                      ),
                      SizedBox(height: 32.h),
                      _buildSection(
                        context,
                        'Job Description',
                        job.description,
                      ),
                      SizedBox(height: 24.h),
                      _buildRequirementsSection(context, job.requirements),
                      SizedBox(height: 24.h),
                      _buildStatusChip(context, job.status),
                      SizedBox(height: 100.h),
                    ],
                  ),
                ),
              ),
              _buildApplyButton(context, state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, IconData icon, String text) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16.w,
          color: theme.textTheme.bodySmall?.color,
        ),
        SizedBox(width: 4.w),
        Text(
          text,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.textTheme.bodySmall?.color,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 12.h),
        Text(
          content,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildRequirementsSection(
    BuildContext context,
    List<String> requirements,
  ) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Requirements',
          style: theme.textTheme.headlineSmall,
        ),
        SizedBox(height: 12.h),
        ...requirements.map(
          (requirement) => Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.h, right: 12.w),
                  width: 6.w,
                  height: 6.w,
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Text(
                    requirement,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatusChip(BuildContext context, String status) {
    final theme = Theme.of(context);
    Color bgColor;
    Color textColor;

    switch (status.toLowerCase()) {
      case 'active':
        bgColor = theme.colorScheme.secondary.withValues(alpha: 0.1);
        textColor = theme.colorScheme.secondary;
        break;
      case 'closed':
        bgColor = theme.colorScheme.error.withValues(alpha: 0.1);
        textColor = theme.colorScheme.error;
        break;
      default:
        bgColor = theme.primaryColor.withValues(alpha: 0.1);
        textColor = theme.primaryColor;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        'Status: $status',
        style: theme.textTheme.labelMedium?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildApplyButton(BuildContext context, JobDetailsState state) {
    final theme = Theme.of(context);
    final job = state.job;

    if (job == null) return const SizedBox.shrink();

    final bool isJobClosed = job.status.toLowerCase() != 'active';
    final bool hasApplied = state.hasApplied;
    final bool justApplied = state.justApplied;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: CustomButton(
          text: justApplied
              ? 'Applied Successfully'
              : hasApplied
                  ? 'Already Applied'
                  : isJobClosed
                      ? 'Job Closed'
                      : 'Apply Now',
          onPressed: hasApplied || isJobClosed ? null : _handleApply,
          isLoading: state.isApplying,
          enabled: !hasApplied && !isJobClosed,
        ),
      ),
    );
  }
}
