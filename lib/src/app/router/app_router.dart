import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/application/auth_bloc/auth_bloc.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/otp_verification_page.dart';
import '../../features/jobs/application/jobs_list_bloc/jobs_list_bloc.dart';
import '../../features/jobs/presentation/pages/job_details_page.dart';
import '../../features/jobs/presentation/pages/jobs_list_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/profile/presentation/pages/profile_setup_page.dart';
import '../injection.dart';

part 'app_router.gr.dart';

// ─── Auth Guard ───────────────────────────────────────────────────────────────

class AuthGuard extends AutoRouteGuard {
  final AuthBloc authBloc;

  AuthGuard(this.authBloc);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    authBloc.state.maybeMap(
      authenticated: (_) => resolver.next(),
      orElse: () {
        resolver.redirectUntil(const LoginRoute());
      },
    );
  }
}

// ─── Router ───────────────────────────────────────────────────────────────────

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final AuthBloc authBloc;

  AppRouter(this.authBloc);

  late final AuthGuard _authGuard = AuthGuard(authBloc);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: OtpVerificationRoute.page),
        AutoRoute(page: ProfileSetupRoute.page, guards: [_authGuard]),
        AutoRoute(page: ProfileRoute.page, guards: [_authGuard]),
        AutoRoute(page: JobsListRoute.page, guards: [_authGuard]),
        AutoRoute(page: JobDetailsRoute.page, guards: [_authGuard]),
      ];
}

// ─── Pages ────────────────────────────────────────────────────────────────────

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigate(context.read<AuthBloc>().state);
    });
  }

  void _navigate(AuthState state) {
    state.maybeMap(
      authenticated: (s) {
        final PageRouteInfo dest = s.user.isProfileComplete
            ? const JobsListRoute()
            : ProfileSetupRoute();
        context.router.replaceAll([dest]);
      },
      unauthenticated: (_) =>
          context.router.replaceAll([const LoginRoute()]),
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (_, current) => current.maybeMap(
        loading: (_) => false,
        initial: (_) => false,
        orElse: () => true,
      ),
      listener: (context, state) => _navigate(state),
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => const LoginPageView();
}

@RoutePage()
class OtpVerificationPage extends StatelessWidget {
  final String phoneNumber;
  const OtpVerificationPage({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) =>
      OtpVerificationPageView(phoneNumber: phoneNumber);
}

@RoutePage()
class ProfileSetupPage extends StatelessWidget {
  final bool isEditing;

  const ProfileSetupPage({super.key, this.isEditing = false});

  @override
  Widget build(BuildContext context) => ProfileSetupPageView(isEditing: isEditing);
}

@RoutePage()
class JobsListPage extends StatelessWidget {
  const JobsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<JobsListBloc>(),
      child: const JobsListPageView(),
    );
  }
}

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => const ProfilePageView();
}

@RoutePage()
class JobDetailsPage extends StatelessWidget {
  final String jobId;
  const JobDetailsPage({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) => JobDetailsPageView(jobId: jobId);
}
