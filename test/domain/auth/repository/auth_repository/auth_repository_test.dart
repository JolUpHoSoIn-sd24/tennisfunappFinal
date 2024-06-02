import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tennis_fun/common/generated_code/tennisfun_api.swagger.dart';
import 'package:tennis_fun/domain/auth/entity/auth_token.dart';
import 'package:tennis_fun/domain/auth/repository/auth_repository.dart';
import 'package:test/test.dart';
import 'auth_repository_test.mocks.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([TennisfunApi, FlutterSecureStorage])
void main() {
  late AuthRepository authRepository;
  late MockTennisfunApi mockTennisfunApi;
  late MockFlutterSecureStorage mockFlutterSecureStorage;

  setUp(() {
    mockTennisfunApi = MockTennisfunApi();
    mockFlutterSecureStorage = MockFlutterSecureStorage();
    authRepository = AuthRepository(
      tennisfunApi: mockTennisfunApi,
      flutterSecureStorage: mockFlutterSecureStorage,
    );
  });

  group('AuthRepository', () {
    test('init - givenToken exists', () async {
      // Arrange
      final token = '5092EB85BC368A439841B95CD267A9B6';
      when(mockFlutterSecureStorage.read(key: anyNamed('key')))
          .thenAnswer((_) async => token);

      // Act
      await authRepository.init();

      // Assert
      expect(authRepository.authToken, isNotNull);
      expect(authRepository.authToken!.token, token);
      verify(mockFlutterSecureStorage.read(key: anyNamed('key'))).called(1);
    });

    test('init - givenToken does not exist', () async {
      // Arrange
      when(mockFlutterSecureStorage.read(key: anyNamed('key')))
          .thenAnswer((_) async => null);

      // Act
      await authRepository.init();

      // Assert
      expect(authRepository.authToken, isNull);
      verify(mockFlutterSecureStorage.read(key: anyNamed('key'))).called(1);
    });

    test('login - success', () async {
      // Arrange
      final email = 'test@example.com';
      final password = 'password123';
      final givenToken = 'JSESSIONID=5092EB85BC368A439841B95CD267A9B6; Path=/; HttpOnly';
      final expectedToken = '5092EB85BC368A439841B95CD267A9B6';
      final httpResponse = http.Response('', 200, headers: {'set-cookie': '$givenToken; path=/; httponly'});
      final response = Response<ApiResponse>(httpResponse, null);

      when(mockTennisfunApi.apiUserLoginPost(
        body: anyNamed('body'),
      )).thenAnswer((_) async => response);

      // Act
      final authToken = await authRepository.login(email: email, password: password);

      // Assert
      expect(authRepository.authToken, isNotNull);
      expect(authRepository.authToken!.token, expectedToken);
      expect(authToken.token, expectedToken);
      verify(mockTennisfunApi.apiUserLoginPost(
        body: anyNamed('body'),
      )).called(1);
    });

    test('login - failure', () async {
      // Arrange
      final email = 'test@example.com';
      final password = 'password123';
      final httpResponse = http.Response('', 200);
      final response = Response<ApiResponse>(httpResponse, null);

      when(mockTennisfunApi.apiUserLoginPost(
        body: anyNamed('body'),
      )).thenAnswer((_) async => response);

      // Act & Assert
      expect(
            () async => await authRepository.login(email: email, password: password),
        throwsException,
      );
      expect(authRepository.authToken, isNull);
      verify(mockTennisfunApi.apiUserLoginPost(
        body: anyNamed('body'),
      )).called(1);
    });
  });
}