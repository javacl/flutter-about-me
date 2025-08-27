import 'package:articles_domain/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initArticlesDomainDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureArticlesDomainDependencies() => $initArticlesDomainDI(getIt);
