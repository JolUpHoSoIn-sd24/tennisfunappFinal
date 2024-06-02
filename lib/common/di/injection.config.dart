// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:tennis_fun/common/api/auth_interceptor.dart' as _i3;
import 'package:tennis_fun/common/api/logging_interceptor.dart' as _i6;
import 'package:tennis_fun/common/di/register_module.dart' as _i11;
import 'package:tennis_fun/common/generated_code/client_index.dart' as _i7;
import 'package:tennis_fun/common/generated_code/tennisfun_api.swagger.dart'
    as _i9;
import 'package:tennis_fun/domain/auth/repository/auth_repository.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AuthInterceptor>(() => registerModule.authInterceptor);
    gh.singleton<_i4.FlutterSecureStorage>(
        () => registerModule.flutterSecureStorage);
    gh.singleton<_i5.Logger>(() => registerModule.logger);
    gh.singleton<_i6.LoggingInterceptor>(
        () => registerModule.loggingInterceptor);
    gh.singleton<_i7.TennisfunApi>(() => registerModule.tennistfunApi);
    gh.singleton<_i8.AuthRepository>(() => _i8.AuthRepository(
          tennisfunApi: gh<_i9.TennisfunApi>(),
          flutterSecureStorage: gh<_i4.FlutterSecureStorage>(),
        ));
    gh.singleton<_i10.GoRouter>(
        () => registerModule.router(authRepository: gh<_i8.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
