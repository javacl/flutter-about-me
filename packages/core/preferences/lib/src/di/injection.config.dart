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

import '../data_source/setting/setting_preferences_data_source.dart' as _i1010;
import '../data_source/setting/setting_preferences_data_source_impl.dart'
    as _i488;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initPreferencesDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i1010.SettingPreferencesDataSource>(
    () => _i488.SettingPreferencesDataSourceImpl(),
  );
  return getIt;
}
