import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tennis_fun/common/generated_code/tennisfun_api.swagger.dart';
import 'package:tennis_fun/domain/auth/entity/auth_token.dart';

@Singleton()
class AuthRepository {
  final BehaviorSubject<AuthToken> _subject = BehaviorSubject.seeded(AuthToken(token: null));
  final TennisfunApi _tennisfunApi;
  final FlutterSecureStorage _flutterSecureStorage;
  final String _authTokenKey = "auth_token";

  AuthRepository({
    required TennisfunApi tennisfunApi,
    required FlutterSecureStorage flutterSecureStorage,
  })  : _tennisfunApi = tennisfunApi,
        _flutterSecureStorage = flutterSecureStorage;

  AuthToken get authToken => _subject.value;

  Stream<AuthToken> get authTokenStream => _subject.stream.asBroadcastStream();

  /// 세션이 남아있는 경우 자동 로그인을 진행합니다.
  @preResolve
  Future<void> init() async {
    String? token = await _flutterSecureStorage.read(key: _authTokenKey);

    if (token != null) {
      _subject.add(AuthToken(token: token));
    }
  }

  /// 로그인을 요청합니다.
  Future<AuthToken> login({
    required String email,
    required String password,
  }) async {
    final response = await _tennisfunApi.apiUserLoginPost(
        body: LoginDto(email: email, password: password));
    String? cookie = response.headers['set-cookie'];

    if (cookie == null) {
      throw Exception("현재 로그인이 불가능합니다.");
    }

    String token = cookie.split(";")[0].split("=")[1].trim();
    AuthToken authToken = AuthToken(token: token);

    _subject.add(authToken);

    return AuthToken(token: token);
  }
}
