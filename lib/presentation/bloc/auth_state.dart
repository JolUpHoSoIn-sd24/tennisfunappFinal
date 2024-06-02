part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final AuthToken? authToken;

  const AuthState({required this.authToken});

  @override
  List<Object?> get props => [runtimeType, authToken];
}