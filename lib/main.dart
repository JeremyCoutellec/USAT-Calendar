import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home_page.dart';

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
    const primaryColor = Color.fromRGBO(40, 123, 2, 1); // #287B02
    const secondaryColor = Color.fromRGBO(205, 17, 20, 1); // #CD1114
    const tertiaryColor = Color.fromRGBO(255, 222, 89, 1); // #FFDE59

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'USAT Calendar',
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
      builder: FlutterI18n.rootAppBuilder(),
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
      home: const MyHomePage(),
    );
  }
}
