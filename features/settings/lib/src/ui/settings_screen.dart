import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/settings_bloc.dart';

part 'settings_form.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsBloc(
        appRouter: appLocator.get<AppRouter>(),
      ),
      child: const _SettingsForm(),
    );
  }
}
