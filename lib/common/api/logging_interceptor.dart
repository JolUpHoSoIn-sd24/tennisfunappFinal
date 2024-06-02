import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:logger/logger.dart';

class LoggingInterceptor implements ResponseInterceptor {
  final Logger _logger;

  LoggingInterceptor(this._logger);

  @override
  FutureOr<Response> onResponse(Response response) async {
    _logger.d('LoggingInterceptor - Response: ${response.statusCode} ${response.body}');
    return response;
  }
}