import 'package:core/core.dart';

import '../../navigation.dart';

abstract final class NavigationDI {
  static void initDependencies(GetIt locator) {
    locator.registerLazySingleton<AppRouter>(
      () => AppRouter(),
    );
  }
}
