// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:usat_calendar/src/features/authentication/view/inscription_view.dart'
    as _i2;
import 'package:usat_calendar/src/features/authentication/view/login_view.dart'
    as _i1;
import 'package:usat_calendar/src/features/common/view/not_found_view.dart'
    as _i4;
import 'package:usat_calendar/src/features/landing/view/landing_view.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SignInScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.SignInScreen(),
      );
    },
    SignUpScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.signUpScreen(),
      );
    },
    LandingRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LandingView(),
      );
    },
    NotFoundRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NotFoundView(),
      );
    },
  };
}

/// generated route for
/// [_i1.SignInScreen]
class SignInScreen extends _i5.PageRouteInfo<void> {
  const SignInScreen({List<_i5.PageRouteInfo>? children})
      : super(
          SignInScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignInScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.signUpScreen]
class SignUpScreen extends _i5.PageRouteInfo<void> {
  const SignUpScreen({List<_i5.PageRouteInfo>? children})
      : super(
          SignUpScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LandingView]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NotFoundView]
class NotFoundRoute extends _i5.PageRouteInfo<void> {
  const NotFoundRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
