import 'package:database/src/db/app_database.dart';
import 'package:database/src/model/coin/coin_entity.dart';
import 'package:drift/drift.dart';

extension CoinMapper on Coin {
  CoinEntity toCoinEntity() => CoinEntity(id: id, name: name, symbol: symbol);
}

extension CoinEntityMapper on CoinEntity {
  CoinsCompanion toCoinsCompanion() =>
      CoinsCompanion(id: Value(id), name: Value(name), symbol: Value(symbol));
}
