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
    on<ChangeInternetConnectionStatus>(_onChangeInternetConnectionStatus);
    on<LoadCharacters>(_onLoadCharacters);
    on<MoveToDetailsPage>(_onMoveToDetailsPage);
    on<InitialLoad>(_onInitialLoad);

    add(InitialLoad());

    NetworkService.observeConnection.listen(
      (bool hasConnection) {
        if (state.hasConnection != hasConnection) {
          add(ChangeInternetConnectionStatus(hasConnection: hasConnection));
        }
      },
    );
  }

  Future<void> _onInitialLoad(
    InitialLoad event,
    Emitter emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final bool hasConnection = await NetworkService.hasConnection;
    emit(state.copyWith(hasConnection: hasConnection));

    add(LoadCharacters());
  }

  Future<void> _onLoadCharacters(
    LoadCharacters event,
    Emitter emit,
  ) async {
    try {
      if (!state.lastPaginatedPageInfo.canLoadMore) return;

      emit(state.copyWith(isLoadingItems: true));
      final PaginatedModel<Character> charactersPaginatedModel =
          await _fetchCharacterUsecase.execute(
        PaginationPayload(
          lastObjectId: state.characters.lastOrNull?.id,
          nextPage: state.lastPaginatedPageInfo.next,
          prevPage: state.lastPaginatedPageInfo.prev,
        ),
      );
      emit(
        state.copyWith(
          characters: state.characters + charactersPaginatedModel.results,
          lastPaginatedPageInfo: charactersPaginatedModel.info,
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
      emit(state.copyWith(characters: []));
      emit(state.copyWith(lastPaginatedPageInfo: PaginationInfo.empty()));
      add(InitialLoad());
    } else {
      emit(
        state.copyWith(
          lastPaginatedPageInfo: PaginationInfo.fromCache(),
        ),
      );
    }
  }
}
