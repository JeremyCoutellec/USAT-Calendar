import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        // resolver.redirect(LoginRoute());
        resolver.next(true);
      } else {
        resolver.next(true);
      }
    });
  }
}
