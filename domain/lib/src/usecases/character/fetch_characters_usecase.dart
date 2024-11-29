import '../../../domain.dart';
import '../base_usecase.dart';

final class FetchCharacterUsecase
    extends FutureUseCase<FetchCharactersPayload, List<Character>> {
  final CharacterRepository _characterRepository;

  const FetchCharacterUsecase({
    required CharacterRepository characterRepository,
  }) : _characterRepository = characterRepository;

  @override
  Future<List<Character>> execute(FetchCharactersPayload payload) async {
    return _characterRepository.fetchCharacters(payload);
  }
}
