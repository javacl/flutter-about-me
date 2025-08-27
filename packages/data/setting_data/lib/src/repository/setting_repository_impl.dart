import 'package:common/model/project_theme_type.dart';
import 'package:common/result/project_exception.dart';
import 'package:common/result/project_result.dart';
import 'package:injectable/injectable.dart';
import 'package:preferences/preferences.dart';
import 'package:setting_data/src/repository/setting_repository.dart';

@Injectable()
class SettingRepositoryImpl implements SettingRepository {
  final SettingPreferencesDataSource _settingDataSource;

  SettingRepositoryImpl(this._settingDataSource);

  @override
  Stream<ProjectThemeType> getThemePreferences() {
    return _settingDataSource.getTheme().map((value) {
      return ProjectThemeType.fromValue(value);
    });
  }

  @override
  Stream<ProjectResult<void>> saveThemePreferences(
    ProjectThemeType theme,
  ) async* {
    try {
      await _settingDataSource.saveTheme(theme.value);
      yield const Success(null);
    } catch (e) {
      yield Error(IOException(cause: e));
    }
  }
}
