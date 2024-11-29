import 'package:core_ui/core_ui.dart';
import 'package:domain/src/payloads/theme/set_app_theme_payload.dart';

abstract interface class ThemeRepository {
  AppTheme fetchAppTheme();

  Future<void> setAppTheme(SetAppThemePayload payload);
}
