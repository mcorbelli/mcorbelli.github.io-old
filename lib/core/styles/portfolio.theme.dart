import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_web/core/data/font_size.enum.dart';

class PortfolioTheme {
  static final ThemeData _light = ThemeData(
    brightness: Brightness.light,
    colorScheme: _lightColorTheme,
    textTheme: _globalTextTheme,
  );

  static final ThemeData _dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: _darkColorTheme,
    textTheme: _globalTextTheme,
  );

  static ThemeData get lightTheme => _light;

  static ThemeData get darkTheme => _dark;

  static const _lightColorTheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0XFF2196F3),
    onPrimary: Color(0XFF3E3D3F),
    secondary: Color(0XFFFFC107),
    onSecondary: Color(0XFF3E3D3F),
    error: Color(0XFF8E372E),
    onError: Color(0XFFFFFFFF),
    background: Color(0XFFEBEAEB),
    onBackground: Color(0XFF3E3D3F),
    surface: Color(0XFFFAF9FC),
    onSurface: Color(0XFF3E3D3F),
  );

  static const _darkColorTheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0XFFE0AB4B),
    onPrimary: Color(0XFFFFFFFF),
    secondary: Color(0XFF567660),
    onSecondary: Color(0XFFFFFFFF),
    error: Color(0XFF6C1928),
    onError: Color(0XFFFFFFFF),
    background: Color(0XFF2C2D31),
    onBackground: Color(0XFFFFFFFF),
    surface: Color(0XFF222125),
    onSurface: Color(0XFFFFFFFF),
  );

  static final _globalTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      fontSize: FontSize.displayLarge.size,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize: FontSize.displayMedium.size,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: FontSize.displaySmall.size,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontSize: FontSize.headlineLarge.size,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: FontSize.headlineMedium.size,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.montserrat(
      fontSize: FontSize.headlineSmall.size,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: FontSize.titleLarge.size,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: FontSize.titleMedium.size,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: FontSize.titleSmall.size,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: FontSize.bodyLarge.size,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: FontSize.bodyMedium.size,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: FontSize.bodySmall.size,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: FontSize.labelLarge.size,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: GoogleFonts.montserrat(
      fontSize: FontSize.labelMedium.size,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: GoogleFonts.montserrat(
      fontSize: FontSize.labelSmall.size,
      fontWeight: FontWeight.bold,
    ),
  );
}
