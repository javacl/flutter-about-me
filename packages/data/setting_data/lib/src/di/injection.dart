import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:setting_data/src/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initSettingDataDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureSettingDataDependencies() => $initSettingDataDI(getIt);
