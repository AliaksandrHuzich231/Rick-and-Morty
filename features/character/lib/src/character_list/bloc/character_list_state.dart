part of 'character_list_bloc.dart';

final class CharacterListState {
  final List<Character> characters;
  final PaginationInfo lastPaginationInfo;

  const CharacterListState({
    required this.characters,
    required this.lastPaginationInfo,
  });

  factory CharacterListState.empty() {
    return CharacterListState(
      characters: [],
      lastPaginationInfo: PaginationInfo.empty(),
    );
  }

  CharacterListState copyWith({
    List<Character>? characters,
    PaginationInfo? lastPaginationInfo,
  }) {
    return CharacterListState(
      characters: characters ?? this.characters,
      lastPaginationInfo: lastPaginationInfo ?? this.lastPaginationInfo,
    );
  }
}
