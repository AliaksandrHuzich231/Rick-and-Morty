import 'package:flutter/material.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

extension AppThemeExtension on AppTheme {
  ThemeData get themeData {
    switch (this) {
      case AppTheme.lightTheme:
        return _lightThemeData;

      case AppTheme.darkTheme:
        return _darkThemeData;
    }
  }
}

ThemeData _lightThemeData = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
);

ThemeData _darkThemeData = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
);
