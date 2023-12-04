import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:usat_calendar/router/auto_router.dart';

import 'firebase_options.dart';
import 'src/app.dart';

Future main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  GetIt.I.registerLazySingleton(() => AppRouter());

  runApp(MyApp());
}
