// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [JobDetailsPage]
class JobDetailsRoute extends PageRouteInfo<JobDetailsRouteArgs> {
  JobDetailsRoute({
    Key? key,
    required String jobId,
    List<PageRouteInfo>? children,
  }) : super(
         JobDetailsRoute.name,
         args: JobDetailsRouteArgs(key: key, jobId: jobId),
         initialChildren: children,
       );

  static const String name = 'JobDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobDetailsRouteArgs>();
      return JobDetailsPage(key: args.key, jobId: args.jobId);
    },
  );
}

class JobDetailsRouteArgs {
  const JobDetailsRouteArgs({this.key, required this.jobId});

  final Key? key;

  final String jobId;

  @override
  String toString() {
    return 'JobDetailsRouteArgs{key: $key, jobId: $jobId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! JobDetailsRouteArgs) return false;
    return key == other.key && jobId == other.jobId;
  }

  @override
  int get hashCode => key.hashCode ^ jobId.hashCode;
}

/// generated route for
/// [JobsListPage]
class JobsListRoute extends PageRouteInfo<void> {
  const JobsListRoute({List<PageRouteInfo>? children})
    : super(JobsListRoute.name, initialChildren: children);

  static const String name = 'JobsListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const JobsListPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [OtpVerificationPage]
class OtpVerificationRoute extends PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({
    Key? key,
    required String phoneNumber,
    List<PageRouteInfo>? children,
  }) : super(
         OtpVerificationRoute.name,
         args: OtpVerificationRouteArgs(key: key, phoneNumber: phoneNumber),
         initialChildren: children,
       );

  static const String name = 'OtpVerificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpVerificationRouteArgs>();
      return OtpVerificationPage(key: args.key, phoneNumber: args.phoneNumber);
    },
  );
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({this.key, required this.phoneNumber});

  final Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpVerificationRouteArgs) return false;
    return key == other.key && phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => key.hashCode ^ phoneNumber.hashCode;
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [ProfileSetupPage]
class ProfileSetupRoute extends PageRouteInfo<ProfileSetupRouteArgs> {
  ProfileSetupRoute({
    Key? key,
    bool isEditing = false,
    List<PageRouteInfo>? children,
  }) : super(
         ProfileSetupRoute.name,
         args: ProfileSetupRouteArgs(key: key, isEditing: isEditing),
         initialChildren: children,
       );

  static const String name = 'ProfileSetupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileSetupRouteArgs>(
        orElse: () => const ProfileSetupRouteArgs(),
      );
      return ProfileSetupPage(key: args.key, isEditing: args.isEditing);
    },
  );
}

class ProfileSetupRouteArgs {
  const ProfileSetupRouteArgs({this.key, this.isEditing = false});

  final Key? key;

  final bool isEditing;

  @override
  String toString() {
    return 'ProfileSetupRouteArgs{key: $key, isEditing: $isEditing}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileSetupRouteArgs) return false;
    return key == other.key && isEditing == other.isEditing;
  }

  @override
  int get hashCode => key.hashCode ^ isEditing.hashCode;
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
