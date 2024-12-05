part of 'character_details_screen.dart';

class _CharacterDetailsForm extends StatelessWidget {
  final Character character;

  const _CharacterDetailsForm({
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        if (character.species.isNotEmpty) ...<Widget>[
          const SizedBox(height: 20),
          Text(
            '${'character_details.species'.watchTr(context)} ${character.species}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
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
    );
  }
}
