import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:preferences/src/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initPreferencesDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configurePreferencesDependencies() => $initPreferencesDI(getIt);
