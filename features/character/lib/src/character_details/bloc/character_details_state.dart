part of 'character_details_bloc.dart';

final class CharacterDetailsState {
  final Character character;

  const CharacterDetailsState({
    required this.character,
  });

  CharacterDetailsState copyWith({
    Character? character,
  }) {
    return CharacterDetailsState(
      character: character ?? this.character,
    );
  }
}
