part of 'character_list_bloc.dart';

final class CharacterListState {
  final int page;
  final List<Character> characters;

  const CharacterListState({
    required this.page,
    required this.characters,
  });

  factory CharacterListState.empty() {
    return const CharacterListState(
      page: 1,
      characters: [],
    );
  }

  CharacterListState copyWith({
    int? page,
    bool? isLoading,
    List<Character>? characters,
  }) {
    return CharacterListState(
      page: page ?? this.page,
      characters: characters ?? this.characters,
    );
  }
}
