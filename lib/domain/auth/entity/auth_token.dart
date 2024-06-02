class AuthToken {
  String? token;

  AuthToken({required this.token});

  bool isAuthenticated() {
    return token != null;
  }
}