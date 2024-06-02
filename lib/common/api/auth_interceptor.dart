import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

class AuthInterceptor implements RequestInterceptor {
  final FlutterSecureStorage _storage;
  final Logger _logger;

  AuthInterceptor(this._storage, this._logger);

  @override
  FutureOr<Request> onRequest(Request request) async {
    _logger.d('AuthInterceptor - Request: ${request.method} ${request.url}');

    final token = await _storage.read(key: 'auth_token');

    if (token != null) {
      final updatedRequest = request.copyWith(
        headers: {...request.headers, 'Authorization': 'Bearer $token'},
      );
      _logger.d('AuthInterceptor - Added Authorization header');
      return updatedRequest;
    }

    return request;
  }
}