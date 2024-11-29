import 'package:core/core.dart';
import 'package:data/src/mappers/mapper_factory.dart';
import 'package:data/src/providers/api_provider/api_request.dart';
import 'package:domain/domain.dart';

import '../../data.dart';
import '../providers/api_provider/api_provider.dart';

final class CharacterRepositoryImpl implements CharacterRepository {
  final ApiProvider _apiProvider;
  final CacheProvider _cacheProvider;

  const CharacterRepositoryImpl({
    required ApiProvider apiProvider,
    required CacheProvider cacheProvider,
  })  : _cacheProvider = cacheProvider,
        _apiProvider = apiProvider;

  @override
  Future<List<Character>> fetchCharacters(
    FetchCharactersPayload payload,
  ) async {
    final List<Character> characters = [];
    if (await NetworkService.hasConnection) {
      characters.addAll(
        await _apiProvider
            .list<CharacterEntity>(
              request: ApiRequest(
                method: HttpMethod.get,
                url: '${AppConstants.BASE_URL}/character/',
                params: {
                  'page': payload.page,
                },
              ),
              parser: CharacterEntity.fromJson,
            )
            .then(
              (list) => list
                  .map(
                    (entity) =>
                        MapperFactory.characterMapper.fromEntity(entity),
                  )
                  .toList(),
            ),
      );
    } else {
      //TODO call cache
    }
    return characters;
  }
}
