import 'package:coin_data/src/model/coin_data_model.dart';
import 'package:common/result/bitzy_result.dart';

abstract class CoinRepository {
  Future<BitZyResult<List<CoinDataModel>>> getCoinsRemote();

  Stream<List<CoinDataModel>> getCoinsLocal();
}
