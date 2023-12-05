import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:usat_calendar/router/auto_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        router.push(LoginRoute());
      } else {
        resolver.next(true);
      }
    });
  }
}
