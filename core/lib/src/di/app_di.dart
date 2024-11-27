import 'package:get_it/get_it.dart';

final GetIt appLocator = GetIt.instance;

abstract final class AppDI {
  static void initDependencies(GetIt locator) {}
}
