import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_web/core/data/font_size.enum.dart';

class PortfolioTheme {
  static final ThemeData _light = ThemeData(
    brightness: Brightness.light,
    colorScheme: _lightColorTheme,
    textTheme: _lightTextTheme,
  );

  static final ThemeData _dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: _darkColorTheme,
    textTheme: _darkTextTheme,
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

  static final _lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      fontSize: FontSize.displayLarge.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize: FontSize.displayMedium.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: FontSize.displaySmall.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontSize: FontSize.headlineLarge.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: FontSize.headlineMedium.size,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.montserrat(
      fontSize: FontSize.headlineSmall.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: FontSize.titleLarge.size,
      fontWeight: FontWeight.w500,
      color: _lightColorTheme.onBackground,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: FontSize.titleMedium.size,
      fontWeight: FontWeight.w500,
      color: _lightColorTheme.onBackground,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: FontSize.titleSmall.size,
      fontWeight: FontWeight.w500,
      color: _lightColorTheme.onBackground,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: FontSize.bodyLarge.size,
      fontWeight: FontWeight.normal,
      color: _lightColorTheme.onBackground,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: FontSize.bodyMedium.size,
      fontWeight: FontWeight.normal,
      color: _lightColorTheme.onBackground,
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: FontSize.bodySmall.size,
      fontWeight: FontWeight.normal,
      color: _lightColorTheme.onBackground,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: FontSize.labelLarge.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    labelMedium: GoogleFonts.montserrat(
      fontSize: FontSize.labelMedium.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
    labelSmall: GoogleFonts.montserrat(
      fontSize: FontSize.labelSmall.size,
      fontWeight: FontWeight.bold,
      color: _lightColorTheme.onBackground,
    ),
  );

  static final _darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.montserrat(
      fontSize: FontSize.displayLarge.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    displayMedium: GoogleFonts.montserrat(
      fontSize: FontSize.displayMedium.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    displaySmall: GoogleFonts.montserrat(
      fontSize: FontSize.displaySmall.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontSize: FontSize.headlineLarge.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: FontSize.headlineMedium.size,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.montserrat(
      fontSize: FontSize.headlineSmall.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    titleLarge: GoogleFonts.montserrat(
      fontSize: FontSize.titleLarge.size,
      fontWeight: FontWeight.w500,
      color: _darkColorTheme.onBackground,
    ),
    titleMedium: GoogleFonts.montserrat(
      fontSize: FontSize.titleMedium.size,
      fontWeight: FontWeight.w500,
      color: _darkColorTheme.onBackground,
    ),
    titleSmall: GoogleFonts.montserrat(
      fontSize: FontSize.titleSmall.size,
      fontWeight: FontWeight.w500,
      color: _darkColorTheme.onBackground,
    ),
    bodyLarge: GoogleFonts.montserrat(
      fontSize: FontSize.bodyLarge.size,
      fontWeight: FontWeight.normal,
      color: _darkColorTheme.onBackground,
    ),
    bodyMedium: GoogleFonts.montserrat(
      fontSize: FontSize.bodyMedium.size,
      fontWeight: FontWeight.normal,
      color: _darkColorTheme.onBackground,
    ),
    bodySmall: GoogleFonts.montserrat(
      fontSize: FontSize.bodySmall.size,
      fontWeight: FontWeight.normal,
      color: _darkColorTheme.onBackground,
    ),
    labelLarge: GoogleFonts.montserrat(
      fontSize: FontSize.labelLarge.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    labelMedium: GoogleFonts.montserrat(
      fontSize: FontSize.labelMedium.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
    labelSmall: GoogleFonts.montserrat(
      fontSize: FontSize.labelSmall.size,
      fontWeight: FontWeight.bold,
      color: _darkColorTheme.onBackground,
    ),
  );
}
