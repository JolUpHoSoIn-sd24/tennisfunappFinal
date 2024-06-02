import 'package:go_router/go_router.dart';
import 'package:tennis_fun/common/router/router_path.dart';
import 'package:tennis_fun/domain/auth/repository/auth_repository.dart';
import 'package:tennis_fun/presentation/page/auth.dart';
import 'package:tennis_fun/presentation/page/home.dart';

GoRouter tennisfunRouter({required AuthRepository authRepository}) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: RouterPath.main.path,
        builder: (context, state) {
          final String title = state.extra as String? ?? 'Tennis Fun';
          return MyHomePage(title: title);
        },
      ),
      GoRoute(
          path: RouterPath.auth.path,
          builder: (context, state) {
            final String title = state.extra as String? ?? 'Tennis Fun';
            return AuthPage(title: title);
          }
      ),
    ],
    redirect: (context, state) {
      final isLoggedIn = authRepository.authToken.isAuthenticated();

      if (!isLoggedIn && state.location != RouterPath.auth.path) {
        return RouterPath.auth.path;
      } else if (isLoggedIn && state.location == RouterPath.auth.path) {
        return RouterPath.main.path;
      }
      return null;
    },
  );
}