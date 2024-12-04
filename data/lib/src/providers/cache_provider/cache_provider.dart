import 'package:data/data.dart';
import 'package:data/src/providers/cache_provider/drift/database/drift_database.dart';

final class CacheProvider {
  final AppDatabase _database;

  const CacheProvider({
    required AppDatabase database,
  }) : _database = database;

  Future<void> addCharacters(List<CharacterEntity> characters) async {
    Future.wait(
      characters.map(
        (CharacterEntity characterEntity) async {
          final int characterId =
              await _database.into(_database.charactersTable).insert(
                    CharactersTableCompanion.insert(
                      id: characterEntity.id,
                      name: characterEntity.name,
                      status: characterEntity.status,
                      species: characterEntity.species,
                      type: characterEntity.type,
                      gender: characterEntity.gender,
                      image: characterEntity.imageUrl,
                      url: characterEntity.characterUrl,
                      createdAt: characterEntity.createdAt,
                    ),
                  );

          await _database.into(_database.characterLocationsTable).insert(
                CharacterLocationsTableCompanion.insert(
                  characterId: characterId,
                  name: characterEntity.characterLocationEntity.name,
                  url: characterEntity.characterLocationEntity.url,
                ),
              );

          characterEntity.episodes.map(
            (String episode) async {
              final int episodeId =
                  await _database.into(_database.episodesTable).insert(
                        EpisodesTableCompanion.insert(
                          episode: episode,
                        ),
                      );
              await _database.into(_database.charactersEpisodesTable).insert(
                    CharactersEpisodesTableCompanion.insert(
                      characterId: characterId,
                      episodeId: episodeId,
                    ),
                  );
            },
          );
        },
      ),
    );
  }

  Future<List<CharacterEntity>> fetchAllCharacters() async {
    final List<CharactersTableData> charactersTableDataList =
        await _database.select(_database.charactersTable).get();

    return Future.wait(charactersTableDataList.map(
      (characterTableData) async {
        final CharacterLocationsTableData characterLocationsTableData =
            await (_database.select(_database.characterLocationsTable)
                  ..where(
                      (item) => item.characterId.equals(characterTableData.id)))
                .getSingle();

        final List<CharactersEpisodesTableData>
            charactersEpisodesTableDataList =
            await (_database.select(_database.charactersEpisodesTable)
                  ..where(
                      (item) => item.characterId.equals(characterTableData.id)))
                .get();

        final List<EpisodesTableData> episodesTableDataList = await Future.wait(
            charactersEpisodesTableDataList
                .map((charactersEpisodesTableData) async {
          return await (_database.select(_database.episodesTable)
                ..where((item) =>
                    item.id.equals(charactersEpisodesTableData.episodeId)))
              .getSingle();
        }).toList());

        return CharacterEntity(
          id: characterTableData.id,
          name: characterTableData.name,
          status: characterTableData.status,
          species: characterTableData.species,
          type: characterTableData.type,
          gender: characterTableData.gender,
          characterLocationEntity: CharacterLocationEntity(
            name: characterLocationsTableData.name,
            url: characterLocationsTableData.url,
          ),
          imageUrl: characterTableData.image,
          episodes: episodesTableDataList
              .map(
                (episode) => episode.episode,
              )
              .toList(),
          characterUrl: characterTableData.url,
          createdAt: characterTableData.createdAt,
        );
      },
    ).toList());
  }

  Future<void> clearAll() async {
    await _database.clear();
  }
}
