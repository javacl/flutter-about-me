import 'package:database/src/model/coin/coin_entity.dart';

abstract class CoinLocalDataSource {
  Stream<List<CoinEntity>> getCoins();

  Future<void> insertCoins(List<CoinEntity> coins);
}
