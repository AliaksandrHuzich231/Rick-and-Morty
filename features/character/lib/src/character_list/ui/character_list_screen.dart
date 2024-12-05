import 'package:character/src/character_list/ui/widgets/character_tile.dart';
import 'package:character/src/character_list/ui/widgets/characters_list_retry.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../bloc/character_list_bloc.dart';

part 'character_list_form.dart';

@RoutePage()
class CharacterListScreen extends StatelessWidget {
  const CharacterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CharacterListBloc(
        appRouter: appLocator.get<AppRouter>(),
        fetchCharacterUsecase: appLocator.get<FetchCharacterUsecase>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'character_list.title'.watchTr(context),
          ),
        ),
        body: const _CharacterListForm(),
      ),
    );
  }
}
