import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

final class ThemeRepositoryImpl implements ThemeRepository {
  final KeyValueStorageProvider _keyValueStorageProvider;

  const ThemeRepositoryImpl({
    required KeyValueStorageProvider keyValueStorageProvider,
  }) : _keyValueStorageProvider = keyValueStorageProvider;

  @override
  AppTheme fetchAppTheme() {
    final String? appTheme = _keyValueStorageProvider.read<String>(
      LocalStorageConstants.APP_THEME_STORAGE_FLAG,
    );
    return appTheme != null
        ? AppTheme.values.byName(appTheme)
        : AppTheme.lightTheme;
  }

  @override
  Future<void> setAppTheme(SetAppThemePayload payload) async {
    await _keyValueStorageProvider.write(
      LocalStorageConstants.APP_THEME_STORAGE_FLAG,
      payload.appTheme.name,
    );
  }
}
