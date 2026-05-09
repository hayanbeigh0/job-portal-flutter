import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../app/injection.dart';
import '../../../../app/router/app_router.dart';
import '../../../../features/auth/application/auth_bloc/auth_bloc.dart';
import '../../application/activity_bloc/activity_bloc.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ActivityBloc>()..add(const ActivityEvent.load()),
      child: const _ProfileContent(),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  const _ProfileContent();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          actions: [
            TextButton.icon(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                context.router.replaceAll([const LoginRoute()]);
              },
              icon: const Icon(Icons.logout, size: 18),
              label: const Text('Sign Out'),
            ),
          ],
        ),
        body: BlocBuilder<ActivityBloc, ActivityState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox.shrink(),
              loading: (_) =>
                  const Center(child: CircularProgressIndicator()),
              loaded: (s) => _buildContent(context, theme, s.activity),
              failure: (_) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline,
                        size: 64.w, color: theme.colorScheme.error),
                    SizedBox(height: 16.h),
                    const Text('Failed to load activity'),
                    SizedBox(height: 16.h),
                    FilledButton.icon(
                      onPressed: () => context
                          .read<ActivityBloc>()
                          .add(const ActivityEvent.load()),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ThemeData theme, activity) {
    final profile = activity.profile;
    final apps = activity.applications;
    final dateFormat = DateFormat('dd MMM yyyy');

    return RefreshIndicator(
      onRefresh: () async =>
          context.read<ActivityBloc>().add(const ActivityEvent.load()),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        children: [
          // ── Profile card ──────────────────────────────────────────
          Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: theme.colorScheme.primary,
                      child: Text(
                        (profile.name?.isNotEmpty == true
                                ? profile.name![0]
                                : profile.phoneNumber[1])
                            .toUpperCase(),
                        style: theme.textTheme.headlineMedium?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            profile.name?.isNotEmpty == true
                                ? profile.name!
                                : 'No name set',
                            style: theme.textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            profile.phoneNumber,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.textTheme.bodySmall?.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit_outlined),
                      tooltip: 'Edit profile',
                      onPressed: () =>
                          context.router.push(ProfileSetupRoute(isEditing: true)),
                    ),
                  ],
                ),
                if (profile.location?.isNotEmpty == true) ...[
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          size: 16.w,
                          color: theme.textTheme.bodySmall?.color),
                      SizedBox(width: 4.w),
                      Text(profile.location!,
                          style: theme.textTheme.bodySmall),
                    ],
                  ),
                ],
                if (profile.skills.isNotEmpty) ...[
                  SizedBox(height: 16.h),
                  Wrap(
                    spacing: 8.w,
                    runSpacing: 6.h,
                    children: profile.skills
                        .map<Widget>((s) => Chip(
                              label: Text(s),
                              labelStyle: theme.textTheme.labelSmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                              backgroundColor: theme.colorScheme.primary
                                  .withValues(alpha: 0.1),
                              padding: EdgeInsets.zero,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ))
                        .toList(),
                  ),
                ],
              ],
            ),
          ),

          SizedBox(height: 28.h),

          // ── Activity section ──────────────────────────────────────
          Row(
            children: [
              Text('Applications',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Spacer(),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  '${apps.length}',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),

          if (apps.isEmpty)
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32.h),
                child: Column(
                  children: [
                    Icon(Icons.inbox_outlined,
                        size: 56.w,
                        color: theme.textTheme.bodySmall?.color),
                    SizedBox(height: 12.h),
                    Text('No applications yet',
                        style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.textTheme.bodySmall?.color)),
                  ],
                ),
              ),
            )
          else
            ...apps.map((app) => _ApplicationCard(
                  app: app,
                  dateFormat: dateFormat,
                  theme: theme,
                )),
        ],
      ),
    );
  }
}

class _ApplicationCard extends StatelessWidget {
  final dynamic app;
  final DateFormat dateFormat;
  final ThemeData theme;

  const _ApplicationCard({
    required this.app,
    required this.dateFormat,
    required this.theme,
  });

  Color _statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'accepted':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      case 'reviewed':
        return Colors.orange;
      default:
        return theme.colorScheme.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final job = app.job;
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job?.title ?? 'Unknown Position',
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    job?.company ?? '',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  if (job?.location?.isNotEmpty == true) ...[
                    SizedBox(height: 2.h),
                    Text(
                      job!.location,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                  SizedBox(height: 8.h),
                  Text(
                    'Applied on ${dateFormat.format(app.appliedAt)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.textTheme.bodySmall?.color,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: _statusColor(app.status).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                app.status[0].toUpperCase() + app.status.substring(1),
                style: theme.textTheme.labelSmall?.copyWith(
                  color: _statusColor(app.status),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
