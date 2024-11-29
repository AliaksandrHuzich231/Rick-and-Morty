import 'package:flutter/material.dart';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  AppDI.initDependencies(appLocator);
  await DataDI.initDependencies(appLocator);
  DomainDI.initDependencies(appLocator);
  NavigationDI.initDependencies(appLocator);

  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: AppLocalization.langFolderPath,
      supportedLocales: AppLocalization.supportedLocales,
      fallbackLocale: AppLocalization.fallbackLocale,
      child: BlocProvider(
        create: (_) => ThemeBloc(
          fetchAppThemeUsecase: appLocator.get<FetchAppThemeUsecase>(),
          setAppThemeUsecase: appLocator.get<SetAppThemeUsecase>(),
        ),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (BuildContext context, ThemeState themeState) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: appLocator.get<AppRouter>().config(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: AppTheme.darkTheme.themeData,
            );
          },
        ),
      ),
    );
  }
}
