part of 'character_list_bloc.dart';

final class CharacterListState {
  final List<Character> characters;
  final List<Character> filteredCharacters;

  final PaginationInfo lastPaginatedPageInfo;
  final PaginationInfo filteredLastPaginatedPageInfo;

  final CharactersFilter charactersFilter;

  final bool? hasConnection;
  final bool isLoading;
  final bool isLoadingItems;
  final bool hasError;

  double get boundaryOffset => 1 - (10 / characters.length);

  bool get isFiltered =>
      charactersFilter.characterStatus != CharacterStatus.any ||
      charactersFilter.characterSpecies != CharacterSpecies.any;

  const CharacterListState({
    required this.characters,
    required this.filteredCharacters,
    required this.lastPaginatedPageInfo,
    required this.filteredLastPaginatedPageInfo,
    required this.charactersFilter,
    required this.hasConnection,
    required this.isLoading,
    required this.isLoadingItems,
    required this.hasError,
  });

  factory CharacterListState.empty() {
    return CharacterListState(
      characters: [],
      filteredCharacters: [],
      lastPaginatedPageInfo: PaginationInfo.empty(),
      filteredLastPaginatedPageInfo: PaginationInfo.empty(),
      charactersFilter: CharactersFilter.empty(),
      hasConnection: null,
      isLoading: false,
      isLoadingItems: false,
      hasError: false,
    );
  }

  CharacterListState copyWith({
    List<Character>? characters,
    List<Character>? filteredCharacters,
    PaginationInfo? lastPaginatedPageInfo,
    PaginationInfo? filteredLastPaginatedPageInfo,
    CharactersFilter? charactersFilter,
    bool? hasConnection,
    bool? isLoading,
    bool? isLoadingItems,
    bool? hasError,
  }) {
    return CharacterListState(
      characters: characters ?? this.characters,
      filteredCharacters: filteredCharacters ?? this.filteredCharacters,
      lastPaginatedPageInfo:
          lastPaginatedPageInfo ?? this.lastPaginatedPageInfo,
      filteredLastPaginatedPageInfo:
          filteredLastPaginatedPageInfo ?? this.filteredLastPaginatedPageInfo,
      charactersFilter: charactersFilter ?? this.charactersFilter,
      hasConnection: hasConnection ?? this.hasConnection,
      isLoading: isLoading ?? this.isLoading,
      isLoadingItems: isLoadingItems ?? this.isLoadingItems,
      hasError: hasError ?? this.hasError,
    );
  }
}
