import 'package:common/model/project_theme_type.dart';
import 'package:common/result/project_result.dart';
import 'package:injectable/injectable.dart';
import 'package:setting_data/setting_data_imports.dart';

@Injectable()
class SaveThemePreferencesUseCase {
  final SettingRepository _settingRepository;

  SaveThemePreferencesUseCase(this._settingRepository);

  Future<ProjectResult<void>> call(ProjectThemeType theme) {
    return _settingRepository.saveThemePreferences(theme);
  }
}
