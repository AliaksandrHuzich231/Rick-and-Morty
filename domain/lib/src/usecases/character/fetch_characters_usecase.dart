import '../../../domain.dart';
import '../base_usecase.dart';

final class FetchCharacterUsecase
    extends FutureUseCase<PaginationPayload, PaginatedModel<Character>> {
  final CharacterRepository _characterRepository;

  const FetchCharacterUsecase({
    required CharacterRepository characterRepository,
  }) : _characterRepository = characterRepository;

  @override
  Future<PaginatedModel<Character>> execute(PaginationPayload payload) async {
    return _characterRepository.fetchCharacters(payload);
  }
}
