import '../../../domain.dart';

final class FetchCharacterUsecase extends FutureUseCase<
    PaginationPayload<CharactersFilter>, PaginatedModel<Character>> {
  final CharacterRepository _characterRepository;

  const FetchCharacterUsecase({
    required CharacterRepository characterRepository,
  }) : _characterRepository = characterRepository;

  @override
  Future<PaginatedModel<Character>> execute(
    PaginationPayload<CharactersFilter> payload,
  ) async {
    return _characterRepository.fetchCharacters(payload);
  }
}
