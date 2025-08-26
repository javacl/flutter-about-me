import 'package:core_di/injection.dart';
import 'package:data_di/injection.dart';
import 'package:domain_di/injection.dart';

void configureDependencies() {
  configureCoreDependencies();
  configureDataDependencies();
  configureDomainDependencies();
}
