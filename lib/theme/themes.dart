import 'package:flutter/material.dart';
import 'package:usat_calendar/theme/colors.dart';
import 'package:usat_calendar/theme/styles.dart';

class Themes {
  static const String? fontFamily = 'Raleway';

  static ThemeData light() => ThemeData(
        fontFamily: fontFamily,

        /// Colors
        brightness: Brightness.light,
        textTheme: ThemeStyles.textTheme,

        /// ColorScheme
        colorScheme: ColorScheme.light(
            primary: ThemeColors.primary,
            secondary: ThemeColors.secondary,
            tertiary: ThemeColors.tertiary),
        // Font Family

        // Appbar
        appBarTheme: AppBarTheme(
          // default system appbar icon is white
          backgroundColor: ThemeColors.primary,
        ),

        /// input
        inputDecorationTheme: InputDecorationTheme(),

        /// Button
        buttonTheme: ButtonThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(),
        ),
        iconTheme: IconThemeData(),
      );

  static ThemeData dark() => ThemeData.dark();
}
