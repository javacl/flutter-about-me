import 'package:common/result/bitzy_result.dart';
import 'package:network/src/model/coin/coin_response.dart';

abstract class CoinRemoteDataSource {
  Future<BitZyResult<List<CoinResponse>>> getCoins();
}
