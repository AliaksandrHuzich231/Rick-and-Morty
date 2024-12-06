import 'package:drift/drift.dart';

class CharacterLocationsTable extends Table {
  IntColumn get characterId => integer()();

  TextColumn get name => text()();

  TextColumn get url => text()();

  @override
  Set<Column<Object>>? get primaryKey => {characterId};
}
