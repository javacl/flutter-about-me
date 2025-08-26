import 'package:network/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initNetworkDI',
  preferRelativeImports: true,
  asExtension: false,
)
void configureNetworkDependencies() => $initNetworkDI(getIt);
