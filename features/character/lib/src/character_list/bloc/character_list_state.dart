part of 'character_list_bloc.dart';

final class CharacterListState {
  final int page;
  final bool isLoading;
  final List<Character> characters;

  const CharacterListState({
    required this.page,
    required this.isLoading,
    required this.characters,
  });

  factory CharacterListState.empty() {
    return const CharacterListState(
      page: 1,
      isLoading: false,
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
      isLoading: isLoading ?? this.isLoading,
      characters: characters ?? this.characters,
    );
  }
}
