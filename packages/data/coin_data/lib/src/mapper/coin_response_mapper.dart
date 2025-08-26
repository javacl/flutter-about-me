import 'package:coin_data/src/model/coin_data_model.dart';
import 'package:database/database.dart';
import 'package:network/network.dart';

extension CoinResponseMapper on CoinResponse {
  CoinDataModel toCoinDataModel() =>
      CoinDataModel(id: id, name: name, symbol: symbol);
}

extension CoinResponseToEntity on CoinResponse {
  CoinEntity toCoinEntity() => CoinEntity(id: id, name: name, symbol: symbol);
}
