import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:network/src/data_source/coin/coin_api_service.dart';
import 'package:network/src/model/coin/coin_response.dart';

@LazySingleton(as: CoinApiService)
class CoinApiServiceImpl implements CoinApiService {
  final Dio _dio;

  CoinApiServiceImpl(this._dio);

  @override
  Future<Response<List<CoinResponse>>> getCoins() async {
    final response = await _dio.get('/api/v1.7/coins');
    return response.data.map((json) => CoinResponse.fromJson(json)).toList();
  }
}
