import 'package:drift/drift.dart';

class CharacterLocationsTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get characterId => integer()();

  TextColumn get name => text()();

  TextColumn get url => text()();
}
