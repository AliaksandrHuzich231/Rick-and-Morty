import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

final class ThemeRepositoryImpl implements ThemeRepository {
  final KeyValueStorageProvider _keyValueStorageProvider;

  const ThemeRepositoryImpl({
    required KeyValueStorageProvider keyValueStorageProvider,
  }) : _keyValueStorageProvider = keyValueStorageProvider;

  @override
  AppTheme get fetchAppTheme {
    final String? appTheme =
        _keyValueStorageProvider.read<String>(AppConstants.appThemeStorageFlag);
    return appTheme != null
        ? AppTheme.values.byName(appTheme)
        : AppTheme.lightTheme;
  }

  @override
  Future<void> setAppTheme(AppTheme newAppTheme) async {
    await _keyValueStorageProvider.write(
      AppConstants.appThemeStorageFlag,
      newAppTheme.name,
    );
  }
}
