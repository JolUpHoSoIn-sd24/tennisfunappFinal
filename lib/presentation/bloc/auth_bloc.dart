import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tennis_fun/common/di/injection.dart';
import 'package:tennis_fun/domain/auth/entity/auth_token.dart';
import 'package:tennis_fun/domain/auth/repository/auth_repository.dart';

part 'auth_state.dart';

part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({AuthRepository? authRepository})
      : _authRepository = authRepository ?? getIt<AuthRepository>(),
        super(const AuthState(authToken: null)) {
    on<_SubscribeAuth>(_onSubscribe);
    on<RequestAuth>(_onRequest);
  }

  Future<void> _onSubscribe(
      _SubscribeAuth event, Emitter<AuthState> emit) async {
    await emit.forEach(_authRepository.authTokenStream,
        onData: (AuthToken data) {
      return AuthState(authToken: data);
    }, onError: (e, s) {
      return AuthState(authToken: state.authToken);
    });
  }

  Future<void> _onRequest(RequestAuth event, Emitter<AuthState> emit) async {
    _authRepository.login(email: event.email, password: event.password);
  }
}
