import 'package:domain/domain.dart';

final class CharactersFilter {
  final CharacterStatus? characterStatus;
  final CharacterSpecies? characterSpecies;

  const CharactersFilter({
    required this.characterStatus,
    required this.characterSpecies,
  });
}
