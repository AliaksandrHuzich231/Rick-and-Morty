import 'package:character/character.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'character_list_event.dart';

part 'character_list_state.dart';

class CharacterListBloc extends Bloc<CharacterListEvent, CharacterListState> {
  final AppRouter _appRouter;
  final FetchCharacterUsecase _fetchCharacterUsecase;

  CharacterListBloc({
    required AppRouter appRouter,
    required FetchCharacterUsecase fetchCharacterUsecase,
  })  : _appRouter = appRouter,
        _fetchCharacterUsecase = fetchCharacterUsecase,
        super(
          CharacterListState.empty(),
        ) {
    on<InitialLoad>(_onInitialLoad);
    on<LoadCharacters>(_onLoadCharacters);
    on<ChangeFilters>(_onChangeFilters);

    on<ChangeInternetConnectionStatus>(_onChangeInternetConnectionStatus);

    on<MoveToDetailsPage>(_onMoveToDetailsPage);

    add(InitialLoad());

    NetworkService.observeConnection.listen(
      (bool hasConnection) {
        if (state.hasConnection != hasConnection) {
          add(
            ChangeInternetConnectionStatus(
              hasConnection: hasConnection,
            ),
          );
        }
      },
    );
  }

  Future<void> _onInitialLoad(
    InitialLoad event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        hasError: false,
      ),
    );

    final bool hasConnection = await NetworkService.hasConnection;
    emit(state.copyWith(hasConnection: hasConnection));

    add(LoadCharacters());
  }

  Future<void> _onLoadCharacters(
    LoadCharacters event,
    Emitter emit,
  ) async {
    try {
      if (!state.filteredLastPaginatedPageInfo.canLoadMore) {
        emit(state.copyWith(isLoading: false));
        return;
      }

      emit(state.copyWith(isLoadingItems: true));

      final PaginatedModel<Character> charactersPaginatedModel =
          await _fetchCharacterUsecase.execute(
        PaginationPayload(
          lastObjectId: state.filteredCharacters.lastOrNull?.id,
          nextPage: state.filteredLastPaginatedPageInfo.next,
          prevPage: state.filteredLastPaginatedPageInfo.prev,
          filter: state.charactersFilter,
        ),
      );

      if (!state.isFiltered) {
        emit(
          state.copyWith(
            characters: state.characters + charactersPaginatedModel.results,
            lastPaginatedPageInfo: charactersPaginatedModel.info,
          ),
        );
      }

      emit(
        state.copyWith(
          filteredCharacters:
              state.filteredCharacters + charactersPaginatedModel.results,
          filteredLastPaginatedPageInfo: charactersPaginatedModel.info,
          isLoading: false,
          isLoadingItems: false,
        ),
      );
    } on Exception catch (_, __) {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          isLoadingItems: false,
        ),
      );
    }
  }

  Future<void> _onChangeFilters(
    ChangeFilters event,
    Emitter emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        charactersFilter: state.charactersFilter.copyWith(
          characterStatus: event.characterStatus,
          characterSpecies: event.characterSpecies,
        ),
      ),
    );

    if (state.hasConnection ?? false) {
      emit(
        state.copyWith(
          filteredCharacters: [],
          filteredLastPaginatedPageInfo: PaginationInfo.empty(),
        ),
      );
      if (state.isFiltered) {
        add(LoadCharacters());
      } else {
        emit(
          state.copyWith(
            filteredCharacters: state.characters,
            filteredLastPaginatedPageInfo: state.lastPaginatedPageInfo,
            isLoading: false,
          ),
        );
      }
    } else {
      if (state.isFiltered) {
        final List<Character> newFilteredList = _filterCharacters(
          state.characters,
        );

        emit(
          state.copyWith(
            filteredCharacters: newFilteredList,
            isLoading: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            filteredCharacters: state.characters,
            filteredLastPaginatedPageInfo: state.lastPaginatedPageInfo,
            isLoading: false,
          ),
        );
      }
    }
  }

  List<Character> _filterCharacters(List<Character> characters) {
    List<Character> newFilteredList = List.of(characters);

    if (state.charactersFilter.characterSpecies != CharacterSpecies.any) {
      newFilteredList = newFilteredList
          .where(
            (item) => item.species == state.charactersFilter.characterSpecies,
          )
          .toList();
    }
    if (state.charactersFilter.characterStatus != CharacterStatus.any) {
      newFilteredList = newFilteredList
          .where(
            (item) => item.status == state.charactersFilter.characterStatus,
          )
          .toList();
    }

    return newFilteredList;
  }

  Future<void> _onMoveToDetailsPage(
    MoveToDetailsPage event,
    Emitter emit,
  ) async {
    await _appRouter.push(
      CharacterDetailsRoute(
        character: event.character,
      ),
    );
  }

  Future<void> _onChangeInternetConnectionStatus(
    ChangeInternetConnectionStatus event,
    Emitter emit,
  ) async {
    emit(state.copyWith(hasConnection: event.hasConnection));
    if (event.hasConnection) {
      emit(
        state.copyWith(
          characters: [],
          filteredCharacters: [],
          lastPaginatedPageInfo: PaginationInfo.empty(),
          filteredLastPaginatedPageInfo: PaginationInfo.empty(),
        ),
      );

      add(InitialLoad());
    } else {
      final List<Character> newFilteredList = _filterCharacters(
        state.characters,
      );

      emit(
        state.copyWith(
          filteredLastPaginatedPageInfo: PaginationInfo.fromCache(),
          filteredCharacters: newFilteredList,
        ),
      );
    }
  }
}
