import 'package:flutter/material.dart';


class AppTheme {
  static Color primaryColorLight = const Color(0xFF6CABDD);
  static Color primaryColorDark = const Color(0xFF3700B3);
  static Color secondaryColorLight = const Color(0xFFBBDEFB);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColorLight,
shadowColor: secondaryColorLight

  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColorDark,

  );
}
