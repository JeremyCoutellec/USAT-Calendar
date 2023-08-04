import 'package:flutter/material.dart';
import 'package:usat_calendar/src/utils/color_utils.dart';

class XColors {
  static final MaterialColor primaryColors =
      ColorUtility.generateMaterialColor(primary);

  static const primary = Color.fromRGBO(40, 123, 2, 1); // #287B02
  static const secondary = Color.fromRGBO(205, 17, 20, 1); // #CD1114
  static const tertiary = Color.fromRGBO(255, 222, 89, 1); // #FFDE59

  static const text = Color(0xFF404040);
}
