import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:preferences/src/data_source/setting/setting_preferences_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: SettingPreferencesDataSource)
class SettingPreferencesDataSourceImpl implements SettingPreferencesDataSource {
  final _themeController = StreamController<int?>.broadcast();
  SharedPreferences? _prefs;

  SettingPreferencesDataSourceImpl() {
    _init();
  }

  static const _themeKey = 'theme';

  Future<void> _init() async {
    _prefs = await SharedPreferences.getInstance();
    _themeController.add(_prefs?.getInt(_themeKey));
  }

  @override
  Stream<int?> getTheme() => _themeController.stream;

  @override
  Future<void> saveTheme(int theme) async {
    await _prefs?.setInt(_themeKey, theme);
    _themeController.add(theme);
  }
}
