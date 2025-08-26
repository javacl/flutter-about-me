import 'package:dio/dio.dart';
import 'package:network/src/model/coin/coin_response.dart';

abstract class CoinApiService {
  Future<Response<List<CoinResponse>>> getCoins();
}
