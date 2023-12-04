import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:usat_calendar/router/auto_router.dart';

Future initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  _locator();
  await Future.wait([
    // Firebase.initializeApp(),
    // AnalyticsService.instance.init(),
  ]);
}

void _locator() {
  GetIt.I.registerLazySingleton(() => AppRouter());
}
