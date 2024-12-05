import 'package:drift/drift.dart';

class EpisodesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get episode => text()();
}
