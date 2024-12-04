part of 'character_list_bloc.dart';

final class CharacterListState {
  final List<Character> characters;
  final PaginationInfo lastPaginatedPageInfo;
  final bool? hasConnection;
  final bool isLoading;
  final bool isLoadingItems;
  final bool hasError;

  double get boundaryOffset => 1 - (10 / characters.length);

  const CharacterListState({
    required this.characters,
    required this.lastPaginatedPageInfo,
    required this.hasConnection,
    required this.isLoading,
    required this.isLoadingItems,
    required this.hasError,
  });

  factory CharacterListState.empty() {
    return CharacterListState(
      characters: [],
      lastPaginatedPageInfo: PaginationInfo.empty(),
      hasConnection: null,
      isLoading: false,
      isLoadingItems: false,
      hasError: false,
    );
  }

  CharacterListState copyWith({
    List<Character>? characters,
    PaginationInfo? lastPaginatedPageInfo,
    bool? hasConnection,
    bool? isLoading,
    bool? isLoadingItems,
    bool? hasError,
  }) {
    return CharacterListState(
      characters: characters ?? this.characters,
      lastPaginatedPageInfo:
          lastPaginatedPageInfo ?? this.lastPaginatedPageInfo,
      hasConnection: hasConnection ?? this.hasConnection,
      isLoading: isLoading ?? this.isLoading,
      isLoadingItems: isLoadingItems ?? this.isLoadingItems,
      hasError: hasError ?? this.hasError,
    );
  }
}
