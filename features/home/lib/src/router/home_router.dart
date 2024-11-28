import 'package:navigation/navigation.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class HomeRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [];
}