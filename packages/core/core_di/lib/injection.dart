import 'package:database/database_imports.dart';
import 'package:network/network_imports.dart';
import 'package:preferences/preferences_imports.dart';

void configureCoreDependencies() {
  configureNetworkDependencies();
  configureDatabaseDependencies();
  configurePreferencesDependencies();
}
