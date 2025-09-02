import 'package:common/model/project_theme_type.dart';
import 'package:injectable/injectable.dart';
import 'package:setting_data/setting_data_imports.dart';

@Injectable()
class GetThemePreferencesUseCase {
  final SettingRepository _settingRepository;

  GetThemePreferencesUseCase(this._settingRepository);

  Stream<ProjectThemeType> call() {
    return _settingRepository.getThemePreferences();
  }
}
