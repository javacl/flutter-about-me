import 'package:coin_data/src/model/coin_data_model.dart';
import 'package:common/result/project_result.dart';

abstract class CoinRepository {
  Future<ProjectResult<List<CoinDataModel>>> getCoinsRemote();

  Stream<List<CoinDataModel>> getCoinsLocal();
}
