import 'package:auto_route/auto_route.dart';

import 'package:home/home.dart';
import 'package:settings/settings.dart';
import 'package:character/character.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              path: 'settings',
              page: SettingsRoute.page,
            ),
            AutoRoute(
              path: 'character-list',
              page: CharacterListRoute.page,
            ),
          ],
        ),
      ];
}
