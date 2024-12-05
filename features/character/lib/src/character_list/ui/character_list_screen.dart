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
      child: Builder(
        builder: (BuildContext context) {
          final CharacterListBloc bloc = context.read<CharacterListBloc>();

          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'character_list.title'.watchTr(context),
              ),
              actions: <Widget>[
                DropdownMenu<CharacterStatus>(
                  onSelected: (CharacterStatus? characterStatus) {
                    bloc.add(
                      ChangeFilters(
                        characterStatus: characterStatus,
                      ),
                    );
                  },
                  initialSelection: CharacterStatus.any,
                  dropdownMenuEntries: CharacterStatus.values
                      .map(
                        (CharacterStatus value) => DropdownMenuEntry(
                          value: value,
                          label: value.status,
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(width: 8),
                DropdownMenu<CharacterSpecies>(
                  onSelected: (CharacterSpecies? characterSpecies) {
                    bloc.add(
                      ChangeFilters(
                        characterSpecies: characterSpecies,
                      ),
                    );
                  },
                  initialSelection: CharacterSpecies.any,
                  dropdownMenuEntries: CharacterSpecies.values
                      .map(
                        (CharacterSpecies value) => DropdownMenuEntry(
                          value: value,
                          label: value.species,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            body: const _CharacterListForm(),
          );
        },
      ),
    );
  }
}
