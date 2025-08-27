import 'package:database/database.dart';
import 'package:network/network.dart';
import 'package:preferences/preferences.dart';

void configureCoreDependencies() {
  configureNetworkDependencies();
  configureDatabaseDependencies();
  configurePreferencesDependencies();
}
