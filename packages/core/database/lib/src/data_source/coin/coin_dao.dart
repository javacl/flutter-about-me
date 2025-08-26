import 'package:database/src/db/app_database.dart';
import 'package:database/src/table/coin/coin_table.dart';
import 'package:drift/drift.dart';

part 'coin_dao.g.dart';

@DriftAccessor(tables: [Coins])
class CoinDao extends DatabaseAccessor<AppDatabase> with _$CoinDaoMixin {
  CoinDao(super.db);

  Stream<List<Coin>> getCoins() => select(coins).watch();

  Future<void> insertCoins(List<CoinsCompanion> coinList) async {
    await batch((batch) {
      batch.insertAll(coins, coinList, mode: InsertMode.insertOrReplace);
    });
  }

  Future<void> clearCoins() => delete(coins).go();
}
