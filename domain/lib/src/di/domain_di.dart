import 'package:core/core.dart';
import 'package:domain/domain.dart';

abstract final class DomainDI {
  static void initDependencies(GetIt locator) {
    _initUseCases(locator);
  }

  static void _initUseCases(GetIt locator) {
    locator.registerLazySingleton<FetchAppThemeUsecase>(
      () => FetchAppThemeUsecase(
        themeRepository: locator.get<ThemeRepository>(),
      ),
    );
    locator.registerLazySingleton<SetAppThemeUsecase>(
      () => SetAppThemeUsecase(
        themeRepository: locator.get<ThemeRepository>(),
      ),
    );

    locator.registerLazySingleton<FetchCharacterUsecase>(
      () => FetchCharacterUsecase(
        characterRepository: locator.get<CharacterRepository>(),
      ),
    );
  }
}
