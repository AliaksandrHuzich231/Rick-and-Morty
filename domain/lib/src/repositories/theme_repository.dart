import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';

abstract interface class ThemeRepository {
  factory ThemeRepository({
    required KeyValueStorageProvider keyValueStorageProvider,
  }) = ThemeRepositoryImpl;

  AppTheme get fetchAppTheme;

  Future<void> setAppTheme(AppTheme newAppTheme);
}