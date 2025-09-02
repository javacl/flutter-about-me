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
import 'package:preferences/preferences_imports.dart' as _i695;

import '../repository/setting_repository_impl.dart' as _i225;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initSettingDataDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i225.SettingRepositoryImpl>(
    () => _i225.SettingRepositoryImpl(gh<_i695.SettingPreferencesDataSource>()),
  );
  return getIt;
}
