import 'package:auto_route/auto_route.dart';
import 'package:usat_calendar/router/auto_router.gr.dart';

class AuthRoutes {
  static const String login = '/login';
  static const String register = '/register';
}

class AuthCoordinator {
  static var autoRouter = [
    AutoRoute(path: AuthRoutes.login, page: LoginRoute.page),
    AutoRoute(path: AuthRoutes.register, page: RegisterRoute.page),
  ];
}
