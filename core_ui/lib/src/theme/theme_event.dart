part of 'theme_bloc.dart';

sealed class ThemeEvent {
  const ThemeEvent();
}

final class InitEvent extends ThemeEvent {
  const InitEvent();
}

final class ChangeThemeEvent extends ThemeEvent {
  final AppTheme appTheme;

  const ChangeThemeEvent({
    required this.appTheme,
  });
}
