import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/character_details_bloc.dart';

part 'character_details_form.dart';

@RoutePage()
class CharacterDetailsScreen extends StatelessWidget {
  final Character character;

  const CharacterDetailsScreen({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CharacterDetailsBloc(
        appRouter: appLocator.get<AppRouter>(),
      ),
      child: _CharacterDetailsForm(
        character: character,
      ),
    );
  }
}
