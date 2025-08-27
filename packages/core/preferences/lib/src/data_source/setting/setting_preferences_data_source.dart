abstract class SettingPreferencesDataSource {
  Stream<int?> getTheme();

  Future<void> saveTheme(int theme);
}
