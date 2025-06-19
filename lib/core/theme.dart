import 'package:flutter/material.dart';
import 'package:qrmaker/core/text_styles.dart';

class AppTheme {
  static Color primaryColorLight = const Color(0xFF6CABDD);
  static Color primaryColorDark = const Color(0xFF3700B3);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColorLight,

  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColorDark,

  );
}
