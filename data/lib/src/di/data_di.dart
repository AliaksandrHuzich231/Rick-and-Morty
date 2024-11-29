import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';

abstract final class DataDI {
  static Future<void> initDependencies(GetIt locator) async {
    await _initProviders(locator);
    _initRepositories(locator);
  }

  static Future<void> _initProviders(GetIt locator) async {
    locator.registerLazySingleton<ApiProvider>(
      () => ApiProvider(
        dio: Dio(),
        listResultField: AppConstants.LIST_RESULT_FIELD,
      ),
    );

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

  static void _initRepositories(GetIt locator) {
    locator.registerLazySingleton<ThemeRepository>(
      () => ThemeRepositoryImpl(
        keyValueStorageProvider: locator.get<KeyValueStorageProvider>(),
      ),
    );

    locator.registerLazySingleton<CharacterRepository>(
      () => CharacterRepositoryImpl(
        apiProvider: locator.get<ApiProvider>(),
        cacheProvider: locator.get<CacheProvider>(),
      ),
    );
  }
}
