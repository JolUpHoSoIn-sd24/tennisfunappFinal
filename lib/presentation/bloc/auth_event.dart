part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [runtimeType];
}

class _SubscribeAuth extends AuthEvent {

}

class RequestAuth extends AuthEvent {
  final String email;
  final String password;

  const RequestAuth({required this.email, required this.password});

  @override
  List<Object?> get props => [...super.props, email, password];
}
