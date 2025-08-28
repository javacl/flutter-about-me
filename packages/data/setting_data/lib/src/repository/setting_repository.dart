import 'package:common/model/project_theme_type.dart';
import 'package:common/result/project_result.dart';

abstract class SettingRepository {
  Stream<ProjectThemeType> getThemePreferences();

  Future<ProjectResult<void>> saveThemePreferences(ProjectThemeType theme);
}
