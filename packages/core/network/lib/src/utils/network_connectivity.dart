import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkConnectivity {
  Future<bool> isConnected();
}

@LazySingleton(as: NetworkConnectivity)
class NetworkConnectivityImpl implements NetworkConnectivity {
  @override
  Future<bool> isConnected() async {
    final connectivityResults = await Connectivity().checkConnectivity();

    if (connectivityResults.contains(ConnectivityResult.none)) return false;

    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result.first.rawAddress.isNotEmpty;
    } on SocketException {
      return false;
    }
  }
}
