import 'package:coin_data/src/mapper/coin_entity_mapper.dart';
import 'package:coin_data/src/mapper/coin_response_mapper.dart';
import 'package:coin_data/src/model/coin_data_model.dart';
import 'package:coin_data/src/repository/coin_repository.dart';
import 'package:common/result/project_result.dart';
import 'package:database/database.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: CoinRepository)
class CoinRepositoryImpl implements CoinRepository {
  final CoinRemoteDataSource _coinRemoteDataSource;
  final CoinLocalDataSource _coinLocalDataSource;

  CoinRepositoryImpl(this._coinRemoteDataSource, this._coinLocalDataSource);

  @override
  Future<ProjectResult<List<CoinDataModel>>> getCoinsRemote() async {
    final result = await _coinRemoteDataSource.getCoins();

    return switch (result) {
      Success<List<CoinResponse>>(:final data) => () async {
        final entities = data.map((e) => e.toCoinEntity()).toList();
        await _coinLocalDataSource.insertCoins(entities);

        final models = data.map((e) => e.toCoinDataModel()).toList();
        return Success(models);
      }(),
      Error() => result,
    };
  }

  @override
  Stream<List<CoinDataModel>> getCoinsLocal() {
    return _coinLocalDataSource.getCoins().map(
      (coins) => coins.map((coin) => coin.toCoinDataModel()).toList(),
    );
  }
}
