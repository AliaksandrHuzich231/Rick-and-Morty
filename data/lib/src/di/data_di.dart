import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/config.dart';
import '../errors/error_handler.dart';
import '../providers/cache_provider/drift/drift.dart';

abstract final class DataDI {
  static Future<void> initDependencies(GetIt locator) async {
    initApi(locator);
    await _initProviders(locator);
    _initRepositories(locator);
  }

  static void initApi(GetIt locator) {
    locator.registerLazySingleton<DioConfig>(
      () => DioConfig(),
    );

    locator.registerLazySingleton<ErrorHandler>(
      () => ErrorHandler(),
    );

    locator.registerLazySingleton<ApiProvider>(
      () => ApiProvider(
        dio: locator<DioConfig>().dio,
        errorHandler: locator<ErrorHandler>(),
        listResultField: ApiConstants.LIST_RESULT_FIELD,
      ),
    );
  }

  static Future<void> _initProviders(GetIt locator) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    locator.registerLazySingleton<AppDatabase>(AppDatabase.new);

    locator.registerLazySingleton<CacheProvider>(
      () => CacheProvider(
        database: locator.get<AppDatabase>(),
      ),
    );

    locator.registerLazySingleton<KeyValueStorageProvider>(
      () => KeyValueStorageProvider(
        sharedPreferences: sharedPreferences,
      ),
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
