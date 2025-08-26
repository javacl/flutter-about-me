import 'package:drift/drift.dart';

class Coins extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get symbol => text()();

  @override
  Set<Column> get primaryKey => {id};
}
