import 'package:article_domain/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initArticleDomainDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureArticleDomainDependencies() => $initArticleDomainDI(getIt);
