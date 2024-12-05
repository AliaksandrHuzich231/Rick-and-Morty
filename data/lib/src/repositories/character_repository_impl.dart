import 'package:core/core.dart';
import 'package:data/src/mappers/mapper_factory.dart';
import 'package:data/src/providers/api_provider/api_request.dart';
import 'package:domain/domain.dart';

import '../../data.dart';

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
    PaginationPayload<CharactersFilter> payload,
  ) async {
    PaginatedModel<Character> charactersPaginatedModel = PaginatedModel.empty();

    if (await NetworkService.hasConnection) {
      if (payload.prevPage == null && payload.nextPage == null) {
        await _cacheProvider.clearAll();
      }

      final bool isSpeciesFilter =
          payload.filter.characterSpecies != CharacterSpecies.any;
      final bool isStatusFilter =
          payload.filter.characterStatus != CharacterStatus.any;

      final PaginatedEntity<CharacterEntity> charactersPaginatedEntity =
          await _apiProvider.object<PaginatedEntity<CharacterEntity>>(
        request: ApiRequest(
          method: HttpMethod.get,
          url: payload.nextPage ?? DataConstants.CHARACTERS_ENDPOINT,
          params: {
            if (isSpeciesFilter)
              DataConstants.CHARACTERS_SPECIES_FILTER:
                  payload.filter.characterSpecies.species,
            if (isStatusFilter)
              DataConstants.CHARACTERS_STATUS_FILTER:
                  payload.filter.characterStatus.status,
          },
        ),
        parser: (Map<String, dynamic> json) {
          return PaginatedEntity<CharacterEntity>.fromJson(
            json,
            CharacterEntity.fromJson,
          );
        },
      );

      if (!(isStatusFilter || isSpeciesFilter)) {
        await _cacheProvider.addCharacters(charactersPaginatedEntity.results);
      }

      charactersPaginatedModel =
          MapperFactory.paginatedMapper<CharacterEntity, Character>()
              .fromEntity(
        charactersPaginatedEntity,
      );
    } else if (payload.lastObjectId == null) {
      final List<CharacterEntity> characters =
          await _cacheProvider.fetchAllCharacters();

      charactersPaginatedModel = PaginatedModel(
        info: PaginationInfo.fromCache(),
        results: characters
            .map(
              (characterEntity) =>
                  MapperFactory.characterMapper.fromEntity(characterEntity),
            )
            .toList(),
      );
    }
    return charactersPaginatedModel;
  }
}
