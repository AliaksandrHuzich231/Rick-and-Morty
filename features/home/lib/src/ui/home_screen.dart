import 'package:core/core.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:settings/settings.dart';

import '../bloc/home_bloc.dart';

part 'home_form.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(
        appRouter: appLocator.get<AppRouter>(),
      ),
      child: const _HomeForm(),
    );
  }
}