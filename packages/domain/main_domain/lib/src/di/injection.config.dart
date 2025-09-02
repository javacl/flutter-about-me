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
import 'package:setting_data/setting_data_imports.dart' as _i66;

import '../use_case/get_theme_preferences_use_case.dart' as _i435;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initMainDomainDI(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i435.GetThemePreferencesUseCase>(
    () => _i435.GetThemePreferencesUseCase(gh<_i66.SettingRepository>()),
  );
  return getIt;
}
