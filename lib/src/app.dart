import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:usat_calendar/localization/localization_utils.dart';
import 'package:usat_calendar/router/auto_router.dart';
import 'package:usat_calendar/src/features/common/setting/setting_bloc.dart';
import 'package:usat_calendar/theme/themes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<XRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SettingBloc()),
      ],
      child: BlocBuilder<SettingBloc, SettingState>(builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('fr', 'FR'),
            Locale('en', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              S.of(context).common_appTitle,
          builder: BotToastInit(),
          theme: XTheme.light(),
          darkTheme: XTheme.dark(),
          themeMode: state.themeMode,
          routeInformationParser:
              appRouter.defaultRouteParser(includePrefixMatches: true),
          routerDelegate: AutoRouterDelegate(
            appRouter,
          ),
        );
      }),
    );
  }
}
