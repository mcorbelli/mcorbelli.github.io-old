import 'package:flutter/material.dart';
import 'package:portfolio_web/core/data/font_size.enum.dart';

class PortfolioTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: _lightColorTheme,
    textTheme: _globalTextTheme,
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: _darkColorTheme,
    textTheme: _globalTextTheme,
  );

  static const _lightColorTheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colors.blue,
    onPrimary: Colors.blueAccent,
    secondary: Colors.green,
    onSecondary: Colors.greenAccent,
    error: Colors.red,
    onError: Colors.redAccent,
    background: Color(0XFFF6F7F8),
    onBackground: Colors.white,
    surface: Colors.purple,
    onSurface: Colors.purple,
  );

  static const _darkColorTheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.blue,
    onPrimary: Colors.blueAccent,
    secondary: Colors.green,
    onSecondary: Colors.greenAccent,
    error: Colors.red,
    onError: Colors.redAccent,
    background: Color(0XFF202020),
    onBackground: Colors.white,
    surface: Colors.purple,
    onSurface: Colors.purple,
  );

  static final _globalTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: FontSize.displayLarge.size,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: FontSize.displayMedium.size,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: FontSize.displaySmall.size,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontSize: FontSize.headlineLarge.size,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: FontSize.headlineMedium.size,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: FontSize.headlineSmall.size,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: FontSize.titleLarge.size,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: FontSize.titleMedium.size,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: FontSize.titleSmall.size,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: FontSize.bodyLarge.size,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontSize: FontSize.bodyMedium.size,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontSize: FontSize.bodySmall.size,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      fontSize: FontSize.labelLarge.size,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
      fontSize: FontSize.labelMedium.size,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: TextStyle(
      fontSize: FontSize.labelSmall.size,
      fontWeight: FontWeight.bold,
    ),
  );
}
