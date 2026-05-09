import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

import '../core/presentation/theme/app_theme.dart';
import '../features/auth/application/auth_bloc/auth_bloc.dart';
import '../features/auth/application/login_bloc/login_bloc.dart';
import '../features/profile/application/profile_bloc/profile_bloc.dart';
import 'injection.dart';
import 'router/app_router.dart';

class JobPortalApp extends StatefulWidget {
  const JobPortalApp({super.key});

  @override
  State<JobPortalApp> createState() => _JobPortalAppState();
}

class _JobPortalAppState extends State<JobPortalApp> {
  late final AuthBloc _authBloc;
  late final AppRouter _appRouter;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    if (!getIt.isRegistered<AuthBloc>()) {
      await configureInjection(Environment.prod);
    }
    _authBloc = getIt<AuthBloc>()..add(const AuthEvent.checkAuthStatus());
    _appRouter = AppRouter(_authBloc);
    if (mounted) setState(() => _ready = true);
  }

  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_ready) {
      return const MaterialApp(
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: _authBloc),
            BlocProvider(create: (_) => getIt<LoginBloc>()),
            BlocProvider(create: (_) => getIt<ProfileBloc>()),
          ],
          child: MaterialApp.router(
            title: 'New Job Portal',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            routerConfig: _appRouter.config(),
          ),
        );
      },
    );
  }
}
