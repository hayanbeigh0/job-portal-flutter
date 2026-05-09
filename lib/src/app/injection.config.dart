// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../core/infrastructure/auth/jwt_token_store.dart' as _i451;
import '../core/infrastructure/core_infrastructure_module.dart' as _i792;
import '../core/infrastructure/network/api_client.dart' as _i1021;
import '../core/infrastructure/websocket/websocket_service.dart' as _i116;
import '../features/auth/application/auth_bloc/auth_bloc.dart' as _i705;
import '../features/auth/application/login_bloc/login_bloc.dart' as _i1043;
import '../features/auth/domain/repositories/i_auth_repository.dart' as _i788;
import '../features/auth/infrastructure/repositories/auth_repository.dart'
    as _i919;
import '../features/jobs/application/job_details_bloc/job_details_bloc.dart'
    as _i509;
import '../features/jobs/application/jobs_list_bloc/jobs_list_bloc.dart'
    as _i1033;
import '../features/jobs/domain/repositories/i_jobs_repository.dart' as _i311;
import '../features/jobs/infrastructure/repositories/jobs_repository.dart'
    as _i854;
import '../features/profile/application/activity_bloc/activity_bloc.dart'
    as _i764;
import '../features/profile/application/profile_bloc/profile_bloc.dart'
    as _i692;
import '../features/profile/domain/repositories/i_profile_repository.dart'
    as _i389;
import '../features/profile/infrastructure/repositories/profile_repository.dart'
    as _i873;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final coreInfrastructureModule = _$CoreInfrastructureModule();
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => coreInfrastructureModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => coreInfrastructureModule.secureStorage,
    );
    gh.lazySingleton<_i451.JwtTokenStore>(
      () => _i451.JwtTokenStore(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i1021.ApiClient>(
      () => _i1021.ApiClient(gh<_i451.JwtTokenStore>()),
    );
    gh.lazySingleton<_i116.WebSocketService>(
      () => _i116.WebSocketService(gh<_i451.JwtTokenStore>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i788.IAuthRepository>(
      () => _i919.AuthRepository(
        gh<_i1021.ApiClient>(),
        gh<_i451.JwtTokenStore>(),
      ),
    );
    gh.lazySingleton<_i311.IJobsRepository>(
      () => _i854.JobsRepository(gh<_i1021.ApiClient>()),
    );
    gh.lazySingleton<_i389.IProfileRepository>(
      () => _i873.ProfileRepository(gh<_i1021.ApiClient>()),
    );
    gh.factory<_i1033.JobsListBloc>(
      () => _i1033.JobsListBloc(
        gh<_i311.IJobsRepository>(),
        gh<_i116.WebSocketService>(),
      ),
    );
    gh.factory<_i705.AuthBloc>(
      () => _i705.AuthBloc(
        gh<_i788.IAuthRepository>(),
        gh<_i116.WebSocketService>(),
      ),
    );
    gh.factory<_i1043.LoginBloc>(
      () => _i1043.LoginBloc(
        gh<_i788.IAuthRepository>(),
        gh<_i116.WebSocketService>(),
      ),
    );
    gh.factory<_i509.JobDetailsBloc>(
      () => _i509.JobDetailsBloc(gh<_i311.IJobsRepository>()),
    );
    gh.factory<_i764.ActivityBloc>(
      () => _i764.ActivityBloc(gh<_i389.IProfileRepository>()),
    );
    gh.factory<_i692.ProfileBloc>(
      () => _i692.ProfileBloc(gh<_i389.IProfileRepository>()),
    );
    return this;
  }
}

class _$CoreInfrastructureModule extends _i792.CoreInfrastructureModule {}
