import 'package:auto_route/auto_route.dart';
import 'package:usat_calendar/router/auto_router.gr.dart';
import 'package:usat_calendar/router/router_name.dart';
import 'package:usat_calendar/src/features/authentication/logic/auth_guard.dart';
import 'package:usat_calendar/src/features/authentication/router/auth_router.dart';

// https://plugins.jetbrains.com/plugin/21071-autoroute-helper
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: LandingRoute.page,
      path: '/landing',
      initial: true,
      guards: [AuthGuard()],
    ),
    ...AuthCoordinator.autoRouter,
    AutoRoute(path: Routes.notFound, page: NotFoundRoute.page),
    RedirectRoute(path: '*', redirectTo: ''),
  ];
}
