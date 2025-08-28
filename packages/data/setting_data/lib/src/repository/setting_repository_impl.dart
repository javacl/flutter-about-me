import 'package:common/model/project_theme_type.dart';
import 'package:common/result/project_exception.dart';
import 'package:common/result/project_result.dart';
import 'package:injectable/injectable.dart';
import 'package:preferences/preferences.dart';
import 'package:setting_data/src/repository/setting_repository.dart';

@Injectable()
class SettingRepositoryImpl implements SettingRepository {
  final SettingPreferencesDataSource _settingPreferencesDataSource;

  SettingRepositoryImpl(this._settingPreferencesDataSource);

  @override
  Stream<ProjectThemeType> getThemePreferences() {
    return _settingPreferencesDataSource.getTheme().map((value) {
      return ProjectThemeType.fromValue(value);
    });
  }

  @override
  Future<ProjectResult<void>> saveThemePreferences(
    ProjectThemeType theme,
  ) async {
    try {
      await _settingPreferencesDataSource.saveTheme(theme.value);
      return const Success(null);
    } catch (e) {
      return Error(IOException(cause: e));
    }
  }
}
