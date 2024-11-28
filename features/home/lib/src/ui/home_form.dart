part of 'home_screen.dart';

class _HomeForm extends StatelessWidget {
  const _HomeForm();

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo<dynamic>>[
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
        return CurvedNavigationBar(
          index: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const <Widget>[
            Icon(Icons.add_ic_call_outlined),
          ],
        );
      },
    );
  }
}
