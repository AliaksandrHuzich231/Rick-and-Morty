import 'package:character/src/character_list/ui/widgets/character_image.dart';
import 'package:character/src/character_list/ui/widgets/character_info.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CharacterTile extends StatelessWidget {
  final VoidCallback onTap;
  final Character character;

  const CharacterTile({
    super.key,
    required this.onTap,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: theme.primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: CharacterImage(
                  imageUrl: character.imageUrl,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CharacterInfo(
                  character: character,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
