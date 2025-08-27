import 'package:article_data/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initArticleDataDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureArticleDataDependencies() => $initArticleDataDI(getIt);
