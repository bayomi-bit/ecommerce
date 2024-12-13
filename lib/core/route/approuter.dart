
import 'package:ecommerce/featurs/login/ui/login_screen.dart';
import 'package:ecommerce/featurs/register/ui/register_screen.dart';
import 'package:go_router/go_router.dart';


class ConstantRouter {
  static const String homepath = "/home";
  static const String registerpath = "/register";
  static const String splash = "/";
  static const String loginscreen = "/login";
}

class AppRouter {
  static final GoRouter router =
      GoRouter(initialLocation: ConstantRouter.loginscreen, routes: [

        // login
    GoRoute(
      path: ConstantRouter.loginscreen,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
        GoRoute(
      path: ConstantRouter.registerpath,
      builder: (context, state) {
        return const RegisterScreen();
      },
    ),
  ]);
}
