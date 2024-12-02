part of 'character_details_screen.dart';

class _CharacterDetailsForm extends StatelessWidget {
  const _CharacterDetailsForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterDetailsBloc, CharacterDetailsState>(
      builder: (_, CharacterDetailsState state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              state.character.name,
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                context.read<CharacterDetailsBloc>().add(
                      const BackToCharacterListPage(),
                    );
              },
            ),
          ),
          body: Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: CachedNetworkImage(
                  imageUrl: state.character.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                state.character.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${state.character.status.status} - ${state.character.gender.gender}',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              if (state
                  .character.characterLocation.name.isNotEmpty) ...<Widget>[
                const SizedBox(height: 20),
                Text(
                  '${'character_details.location'.watchTr(context)} ${state.character.characterLocation.name}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
              if (state.character.species.isNotEmpty) ...<Widget>[
                const SizedBox(height: 20),
                Text(
                  '${'character_details.species'.watchTr(context)} ${state.character.species}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
              if (state.character.type.isNotEmpty) ...<Widget>[
                const SizedBox(height: 20),
                Text(
                  '${'character_details.type'.watchTr(context)} ${state.character.type}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
