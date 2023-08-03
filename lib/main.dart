import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:usat_calendar/data/db.dart';
import 'package:usat_calendar/shared/routes/router.dart';
import 'package:usat_calendar/shared/routes/auth_guard.dart';

Future<void> main() async {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    if (kDebugMode) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${details.exception}',
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    final _rootRouter = RootRouter();

    const primaryColor = Color.fromRGBO(40, 123, 2, 1); // #287B02
    const secondaryColor = Color.fromRGBO(205, 17, 20, 1); // #CD1114
    const tertiaryColor = Color.fromRGBO(255, 222, 89, 1); // #FFDE59

    return MaterialApp.router(
      supportedLocales: const [
        Locale('fr', 'FR'),
      ],
      localizationsDelegates: [
        FlutterI18nDelegate(
          translationLoader: FileTranslationLoader(
            fallbackFile: 'fr',
            basePath: 'assets/i18n',
          ),
          missingTranslationHandler: (key, locale) {
            print(
                '--- Missing Key: $key, languageCode: ${locale?.languageCode}');
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'USAT Calendar',
      debugShowCheckedModeBanner: false,
      routerConfig: _rootRouter.config(),
      theme: ThemeData(
        // COLORS
        primaryColor: primaryColor,
        colorScheme: const ColorScheme.light(
            primary: primaryColor,
            secondary: secondaryColor,
            tertiary: tertiaryColor,
            error: Colors.red),
        // Font Family
        fontFamily: 'Raleway',
        // Text Style
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ).apply(
          bodyColor: Colors.white,
          displayColor: primaryColor,
        ),
      ),
      builder: (_, router) {
        return ChangeNotifierProvider<AuthService>(
          create: (_) => authService,
          child: BooksDBProvider(
            child: router!,
          ),
        );
      },
    );
  }
}
