import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

class CharacterInfo extends StatelessWidget {
  final Character character;

  const CharacterInfo({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          character.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          character.id.toString(),
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
        const SizedBox(height: 20),
        Text(
          character.characterLocation.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
