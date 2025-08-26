import 'package:database/src/data_source/coin/coin_dao.dart';
import 'package:database/src/data_source/coin/coin_local_data_source.dart';
import 'package:database/src/mapper/coin/coin_mapper.dart';
import 'package:database/src/model/coin/coin_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CoinLocalDataSource)
class CoinLocalDataSourceImpl implements CoinLocalDataSource {
  final CoinDao _coinDao;

  CoinLocalDataSourceImpl(this._coinDao);

  @override
  Stream<List<CoinEntity>> getCoins() {
    return _coinDao
        .getCoins() // returns Stream<List<Coin>>
        .map((rows) => rows.map((coin) => coin.toCoinEntity()).toList());
  }

  @override
  Future<void> insertCoins(List<CoinEntity> coins) async {
    final companions = coins.map((e) => e.toCoinsCompanion()).toList();
    await _coinDao.insertCoins(companions);
  }
}
