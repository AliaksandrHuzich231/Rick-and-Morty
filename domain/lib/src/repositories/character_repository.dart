import 'package:domain/domain.dart';

abstract interface class CharacterRepository {
  Future<List<Character>> fetchCharacters(FetchCharactersPayload payload);
}
