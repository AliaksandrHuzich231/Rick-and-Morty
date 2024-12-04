import 'package:drift/drift.dart';

class CharactersTable extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get status => text()();

  TextColumn get species => text()();

  TextColumn get type => text()();

  TextColumn get gender => text()();

  TextColumn get image => text()();

  TextColumn get url => text()();

  TextColumn get createdAt => text()();
}
