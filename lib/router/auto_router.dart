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
    RedirectRoute(path: '*', redirectTo: ''),
  ];
}
