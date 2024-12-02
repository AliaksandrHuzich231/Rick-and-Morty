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
    on<LoadMoreCharacters>(_onLoadMoreCharacters);
    on<MoveToDetailsPage>(_onMoveToDetailsPage);
  }

  Future<void> _onLoadMoreCharacters(
    LoadMoreCharacters event,
    Emitter emit,
  ) async {
    final PaginatedModel<Character> charactersPaginatedModel =
        await _fetchCharacterUsecase.execute(
      PaginationPayload(
        lastObjectId: state.characters.lastOrNull?.id,
        nextPage: state.lastPaginationInfo.next,
      ),
    );
    emit(
      state.copyWith(
        characters: state.characters + charactersPaginatedModel.results,
        lastPaginationInfo: charactersPaginatedModel.info,
      ),
    );
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
}
