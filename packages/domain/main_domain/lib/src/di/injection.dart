import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:main_domain/src/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initMainDomainDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureMainDomainDependencies() => $initMainDomainDI(getIt);
