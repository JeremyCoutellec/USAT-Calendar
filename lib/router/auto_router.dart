import 'package:auto_route/auto_route.dart';
import 'package:usat_calendar/router/auto_router.gr.dart';
import 'package:usat_calendar/router/router_name.dart';

// https://plugins.jetbrains.com/plugin/21071-autoroute-helper
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: LandingRoute.page,
      path: '/',
      children: [
        AutoRoute(path: RouteTaps.landing, page: LandingRoute.page),
      ],
    ),
    AutoRoute(
      page: AuthenticationRoute.page,
      path: '/authentication',
      children: [
        AutoRoute(path: RouteTaps.login, page: LoginRoute.page),
        AutoRoute(path: RouteTaps.inscription, page: InscriptionRoute.page),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: ''),
  ];
}
