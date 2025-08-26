import 'package:common/result/bitzy_result.dart';
import 'package:injectable/injectable.dart';
import 'package:network/src/data_source/coin/coin_api_service.dart';
import 'package:network/src/data_source/coin/coin_remote_data_source.dart';
import 'package:network/src/model/coin/coin_response.dart';
import 'package:network/src/utils/network_connectivity.dart';
import 'package:network/src/utils/network_result.dart';

@LazySingleton(as: CoinRemoteDataSource)
class CoinRemoteDataSourceImpl implements CoinRemoteDataSource {
  final CoinApiService apiService;
  final NetworkConnectivity networkConnectivity;

  CoinRemoteDataSourceImpl(this.apiService, this.networkConnectivity);

  @override
  Future<BitZyResult<List<CoinResponse>>> getCoins() {
    return checkNetworkResult<List<CoinResponse>>(
      call: () => apiService.getCoins(),
      networkConnectivity: networkConnectivity,
      errorMessage: "error get coins",
    );
  }
}
