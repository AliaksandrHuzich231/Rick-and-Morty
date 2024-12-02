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
  Future<PaginatedModel<Character>> fetchCharacters(
    PaginationPayload payload,
  ) async {
    PaginatedModel<Character> charactersPaginatedModel = PaginatedModel.empty();
    if (await NetworkService.hasConnection) {
      charactersPaginatedModel = await _apiProvider
          .object<PaginatedEntity<CharacterEntity>>(
            request: ApiRequest(
              method: HttpMethod.get,
              url: payload.nextPage ?? ApiConstants.CHARACTERS_ENDPOINT,
            ),
            parser: (Map<String, dynamic> json) {
              return PaginatedEntity<CharacterEntity>.fromJson(
                json,
                CharacterEntity.fromJson,
              );
            },
          )
          .then(
            MapperFactory.paginatedMapper<CharacterEntity, Character>()
                .fromEntity,
          );
    } else {}
    return charactersPaginatedModel;
  }
}
