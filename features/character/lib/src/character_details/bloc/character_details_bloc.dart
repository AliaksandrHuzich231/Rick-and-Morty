import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'character_details_event.dart';

part 'character_details_state.dart';

class CharacterDetailsBloc
    extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  final AppRouter _appRouter;

  CharacterDetailsBloc({
    required AppRouter appRouter,
    required Character character,
  })  : _appRouter = appRouter,
        super(
          CharacterDetailsState(
            character: character,
          ),
        ) {
    on<BackToCharacterListPage>(_onBackToCharacterListPage);
  }

  Future<void> _onBackToCharacterListPage(
    BackToCharacterListPage event,
    Emitter emit,
  ) async {
    await _appRouter.maybePop();
  }
}
