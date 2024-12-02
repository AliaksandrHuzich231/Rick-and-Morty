part of 'home_screen.dart';

class _HomeForm extends StatelessWidget {
  const _HomeForm();

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo<dynamic>>[
        CharacterListRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
        return NavigationBar(
          onDestinationSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
          destinations: <NavigationDestination>[
            NavigationDestination(
              icon: const Icon(
                Icons.list,
              ),
              label: 'home.list_label'.watchTr(context),
            ),
            NavigationDestination(
              icon: const Icon(
                Icons.settings,
              ),
              label: 'home.settings_label'.watchTr(context),
            ),
          ],
        );
      },
    );
  }
}
