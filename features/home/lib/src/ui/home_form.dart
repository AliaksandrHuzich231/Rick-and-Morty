part of 'home_screen.dart';

class _HomeForm extends StatelessWidget {
  const _HomeForm();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return AutoTabsScaffold(
      routes: const <PageRouteInfo<dynamic>>[
        CharacterListRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
        return CurvedNavigationBar(
          color: theme.navigationBarTheme
              .backgroundColor ??
              AppColors.transparent,
          backgroundColor:  theme.scaffoldBackgroundColor,
          index: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const <Widget>[
            Icon(Icons.list),
            Icon(Icons.settings),
          ],
        );
      },
    );
  }
}
