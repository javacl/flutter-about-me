import 'package:database/src/data_source/coin/coin_dao.dart';
import 'package:database/src/table/coin/coin_table.dart';
import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Coins], daos: [CoinDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
