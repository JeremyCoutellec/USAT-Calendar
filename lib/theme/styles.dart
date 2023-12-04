import 'package:flutter/material.dart';

class ThemeStyles {
  static const title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static const body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const inputStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

// https://api.flutter.dev/flutter/material/TextTheme-class.html
  static TextTheme get textTheme {
    final textTheme = const TextTheme().apply();
    return textTheme;
  }
}
