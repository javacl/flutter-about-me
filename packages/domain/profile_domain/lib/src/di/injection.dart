import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:profile_domain/src/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initProfileDomainDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureProfileDomainDependencies() => $initProfileDomainDI(getIt);
