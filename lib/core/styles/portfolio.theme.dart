import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_web/core/data/font_size.enum.dart';

class PortfolioTheme {
  static final ThemeData _lightTheme = _buildThemeData(Brightness.light);
  static final ThemeData _darkTheme = _buildThemeData(Brightness.dark);

  static ThemeData get lightTheme => _lightTheme;
  static ThemeData get darkTheme => _darkTheme;

  static ThemeData _buildThemeData(
    Brightness brightness,
  ) {
    ColorScheme colorScheme = _lightColorScheme;
    if (brightness == Brightness.dark) {
      colorScheme = _darkColorScheme;
    }

    return ThemeData(
      brightness: brightness,
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: _textTheme,
      scaffoldBackgroundColor: colorScheme.background,
      drawerTheme: DrawerThemeData(
        backgroundColor: colorScheme.background,
      ),
    );
  }

  static ThemeMode getThemeMode() {
    final instance = SchedulerBinding.instance;
    final platform = instance.platformDispatcher;

    if (platform.platformBrightness == Brightness.light) {
      return ThemeMode.light;
    }

    return ThemeMode.dark;
  }

  static final TextTheme _textTheme = TextTheme(
    displayLarge: _buildTextStyle(
      FontSize.displayLarge,
      FontWeight.bold,
    ),
    displayMedium: _buildTextStyle(
      FontSize.displayMedium,
      FontWeight.bold,
    ),
    displaySmall: _buildTextStyle(
      FontSize.displaySmall,
      FontWeight.bold,
    ),
    headlineLarge: _buildTextStyle(
      FontSize.headlineLarge,
      FontWeight.bold,
    ),
    headlineMedium: _buildTextStyle(
      FontSize.headlineMedium,
      FontWeight.bold,
    ),
    headlineSmall: _buildTextStyle(
      FontSize.headlineSmall,
      FontWeight.bold,
    ),
    titleLarge: _buildTextStyle(
      FontSize.titleLarge,
      FontWeight.w500,
    ),
    titleMedium: _buildTextStyle(
      FontSize.titleMedium,
      FontWeight.w500,
    ),
    titleSmall: _buildTextStyle(
      FontSize.titleSmall,
      FontWeight.w500,
    ),
    bodyLarge: _buildTextStyle(
      FontSize.bodyLarge,
      FontWeight.normal,
    ),
    bodyMedium: _buildTextStyle(
      FontSize.bodyMedium,
      FontWeight.normal,
    ),
    bodySmall: _buildTextStyle(
      FontSize.bodySmall,
      FontWeight.normal,
    ),
    labelLarge: _buildTextStyle(
      FontSize.labelLarge,
      FontWeight.bold,
    ),
    labelMedium: _buildTextStyle(
      FontSize.labelMedium,
      FontWeight.bold,
    ),
    labelSmall: _buildTextStyle(
      FontSize.labelSmall,
      FontWeight.bold,
    ),
  );

  static TextStyle _buildTextStyle(
    FontSize fontSize,
    FontWeight fontWeight,
  ) {
    return GoogleFonts.montserrat(
      fontSize: fontSize.size,
      fontWeight: fontWeight,
    );
  }

  static const _lightColorScheme = ColorScheme.light(
    primary: Color(0XFF083D77),
    onPrimary: Color(0XFF3E3D3F),
    secondary: Color(0XFFE3B505),
    onSecondary: Color(0XFF3E3D3F),
    error: Color(0XFF8E372E),
    onError: Color(0XFFFFFFFF),
    background: Color(0xFFF0F2F5),
    onBackground: Color(0xFF65676B),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF65676B),
  );

  static const _darkColorScheme = ColorScheme.dark(
    primary: Color(0XFFE0AB4B),
    onPrimary: Color(0XFFFFFFFF),
    secondary: Color(0XFF567660),
    onSecondary: Color(0XFFFFFFFF),
    error: Color(0XFF6C1928),
    onError: Color(0XFFFFFFFF),
    background: Color(0xFF18191A),
    onBackground: Color(0xFFB1B3B9),
    surface: Color(0xFF242526),
    onSurface: Color(0xFFB1B3B9),
  );
}
