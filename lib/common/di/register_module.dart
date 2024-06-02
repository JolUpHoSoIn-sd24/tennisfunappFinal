import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tennis_fun/common/api/auth_interceptor.dart';
import 'package:tennis_fun/common/api/auth_interceptor.dart';
import 'package:tennis_fun/common/api/logging_interceptor.dart';
import 'package:tennis_fun/common/generated_code/client_index.dart';
import 'package:tennis_fun/common/router/router.dart';
import 'package:tennis_fun/domain/auth/repository/auth_repository.dart';

@module
abstract class RegisterModule {
  @Singleton()
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @singleton
  Logger get logger => Logger();

  @singleton
  AuthInterceptor get authInterceptor => AuthInterceptor(flutterSecureStorage, logger);

  @singleton
  LoggingInterceptor get loggingInterceptor => LoggingInterceptor(logger);

  @singleton
  TennisfunApi get tennistfunApi => TennisfunApi.create(
    baseUrl: Uri.parse("uri"),
    interceptors: [
      authInterceptor,
      loggingInterceptor,
      // TODO: 에러 처리 interceptor 추가
    ]
  );

  @singleton
  GoRouter router({required AuthRepository authRepository}) => tennisfunRouter(authRepository: authRepository);
}