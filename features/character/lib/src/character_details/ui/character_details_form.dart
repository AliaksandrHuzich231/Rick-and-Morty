part of 'character_details_screen.dart';

class _CharacterDetailsForm extends StatelessWidget {
  final Character character;

  const _CharacterDetailsForm({
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          character.name,
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
              imageUrl: character.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            character.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${character.status.status} - ${character.gender.gender}',
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          if (character.characterLocation.name.isNotEmpty) ...<Widget>[
            const SizedBox(height: 20),
            Text(
              '${'character_details.location'.watchTr(context)} ${character.characterLocation.name}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
          const SizedBox(height: 20),
          Text(
            '${'character_details.species'.watchTr(context)} ${character.species.species}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          if (character.type.isNotEmpty) ...<Widget>[
            const SizedBox(height: 20),
            Text(
              '${'character_details.type'.watchTr(context)} ${character.type}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
