import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Constants {
  static const Color primaryColor = Color(0xFFFF006B);
  static const Color secondaryColor = Color(0xFF0E0D0D);

  static ThemeData darkTheme = ThemeData(
    primaryColor: Constants.primaryColor,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Constants.secondaryColor),
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: Colors.grey[800],
      ),
      bodyMedium: TextStyle(color: Colors.grey[800]),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(elevation: 0.0),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all<Color?>(Colors.white),
      fillColor: MaterialStateProperty.all<Color?>(Constants.primaryColor),
      splashRadius: 1.0,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: Constants.primaryColor,
      filled: true,
      // fillColor: Color(0xFFEDF8F9),
      // labelStyle: TextStyle(
      //   color: Constants.primaryColor,
      // ),
      hintStyle: TextStyle(color: Color(0x5F6F6C6C)),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Constants.primaryColor,
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Constants.primaryColor,
      foregroundColor: Constants.primaryColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      circularTrackColor: Colors.white,
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF1F1F1F),
      secondary: Colors.white70,
      background: Color(0xDD080808),
      tertiary: Colors.white,
      inversePrimary: Color(0xFF4C4C4C),
      primaryContainer: Color(0xFF1F1F1F),
      surface: Color(0xFF1F1F1F),
      inverseSurface: Colors.white,
    ),
  );
}
