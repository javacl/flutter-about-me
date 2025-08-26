import 'package:coin_data/src/model/coin_data_model.dart';
import 'package:database/database.dart';

extension CoinEntityMapper on CoinEntity {
  CoinDataModel toCoinDataModel() =>
      CoinDataModel(id: id, name: name, symbol: symbol);
}
