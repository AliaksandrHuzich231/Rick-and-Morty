part of 'character.dart';

final class CharactersFilter {
  final CharacterStatus characterStatus;
  final CharacterSpecies characterSpecies;

  factory CharactersFilter.empty() {
    return const CharactersFilter(
      characterStatus: CharacterStatus.any,
      characterSpecies: CharacterSpecies.any,
    );
  }

  const CharactersFilter({
    required this.characterStatus,
    required this.characterSpecies,
  });

  CharactersFilter copyWith({
    CharacterStatus? characterStatus,
    CharacterSpecies? characterSpecies,
  }) {
    return CharactersFilter(
      characterStatus: characterStatus ?? this.characterStatus,
      characterSpecies: characterSpecies ?? this.characterSpecies,
    );
  }
}
