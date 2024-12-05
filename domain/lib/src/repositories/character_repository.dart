import 'package:domain/domain.dart';

abstract interface class CharacterRepository {
  Future<PaginatedModel<Character>> fetchCharacters(
    PaginationPayload payload,
  );
}
