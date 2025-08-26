// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data_source/coin/coin_dao.dart' as _i974;
import '../data_source/coin/coin_local_data_source.dart' as _i47;
import '../data_source/coin/coin_local_data_source_impl.dart' as _i36;
import '../db/app_database.dart' as _i951;
import 'database_module.dart' as _i384;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initDatabaseDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final databaseModule = _$DatabaseModule();
  gh.lazySingleton<_i951.AppDatabase>(() => databaseModule.provideDatabase());
  gh.lazySingleton<_i974.CoinDao>(
    () => databaseModule.provideCoinDao(gh<_i951.AppDatabase>()),
  );
  gh.lazySingleton<_i47.CoinLocalDataSource>(
    () => _i36.CoinLocalDataSourceImpl(gh<_i974.CoinDao>()),
  );
  return getIt;
}

class _$DatabaseModule extends _i384.DatabaseModule {}
