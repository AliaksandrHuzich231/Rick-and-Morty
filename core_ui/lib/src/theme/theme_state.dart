part of 'theme_bloc.dart';

final class ThemeState {
  final AppTheme appTheme;

  const ThemeState({required this.appTheme});

  ThemeData get currentThemeData => appTheme.themeData;

  ThemeState copyWith(
      AppTheme? appTheme,
      ) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}