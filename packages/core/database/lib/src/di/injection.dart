import 'package:database/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initDatabaseDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDatabaseDependencies() => $initDatabaseDI(getIt);
