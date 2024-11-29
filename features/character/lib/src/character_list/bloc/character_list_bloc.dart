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
    emit(state.copyWith(isLoading: true));

    final List<Character> characters = await _fetchCharacterUsecase.execute(
      FetchCharactersPayload(
        page: state.page,
      ),
    );
    emit(
      state.copyWith(
        characters: state.characters + characters,
        page: state.page + 1,
      ),
    );

    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onMoveToDetailsPage(
    MoveToDetailsPage event,
    Emitter emit,
  ) async {
    //TODO navigate to details page
  }
}
