// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data_source/coin/coin_api_service.dart' as _i733;
import '../data_source/coin/coin_api_service_impl.dart' as _i1035;
import '../data_source/coin/coin_remote_data_source.dart' as _i674;
import '../data_source/coin/coin_remote_data_source_impl.dart' as _i780;
import '../utils/network_connectivity.dart' as _i559;
import 'network_module.dart' as _i567;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initNetworkDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i361.Dio>(() => networkModule.dio);
  gh.lazySingleton<_i559.NetworkConnectivity>(
    () => _i559.NetworkConnectivityImpl(),
  );
  gh.lazySingleton<_i733.CoinApiService>(
    () => _i1035.CoinApiServiceImpl(gh<_i361.Dio>()),
  );
  gh.lazySingleton<_i674.CoinRemoteDataSource>(
    () => _i780.CoinRemoteDataSourceImpl(
      gh<_i733.CoinApiService>(),
      gh<_i559.NetworkConnectivity>(),
    ),
  );
  return getIt;
}

class _$NetworkModule extends _i567.NetworkModule {}
