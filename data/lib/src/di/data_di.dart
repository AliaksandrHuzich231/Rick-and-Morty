import 'package:core/core.dart';
import 'package:data/src/providers/cache_provider/cache_provider.dart';

import '../providers/key_value_storage_provider/key_value_storage_provider.dart';

abstract final class DataDI {
  static Future<void> initDependencies(GetIt locator) async {
    _initApi(locator);
    await _initProviders(locator);
    _initRepositories(locator);
  }

  static void _initApi(GetIt locator) {}

  static Future<void> _initProviders(GetIt locator) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    locator.registerLazySingleton<KeyValueStorageProvider>(
      () => KeyValueStorageProvider(
        sharedPreferences: sharedPreferences,
      ),
    );

    locator.registerLazySingleton<CacheProvider>(
      () => CacheProvider(),
    );
  }

  static void _initRepositories(GetIt locator) {}
}
