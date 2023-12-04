import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:usat_calendar/router/auto_router.dart';

class AppCoordinator {
  static AppRouter get rootRouter => GetIt.I<AppRouter>();

  static BuildContext get context =>
      rootRouter.navigatorKey.currentState!.context;

  static Future<bool> pop<T extends Object?>([T? result]) async {
    return rootRouter.pop(result);
  }
}
