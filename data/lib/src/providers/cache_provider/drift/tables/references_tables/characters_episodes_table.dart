import 'package:drift/drift.dart';

class CharactersEpisodesTable extends Table {
  IntColumn get characterId => integer()();

  IntColumn get episodeId => integer()();

  @override
  Set<Column<Object>> get primaryKey => <Column<Object>>{
        characterId,
        episodeId,
      };
}
