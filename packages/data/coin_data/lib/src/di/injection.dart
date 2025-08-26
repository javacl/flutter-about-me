import 'package:coin_data/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initCoinDataDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureCoinDataDependencies() => $initCoinDataDI(getIt);
