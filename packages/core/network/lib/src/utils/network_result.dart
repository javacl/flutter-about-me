import 'dart:async';

import 'package:common/result/bitzy_exception.dart';
import 'package:common/result/bitzy_result.dart';
import 'package:dio/dio.dart';
import 'package:network/src/model/error/error_response.dart';
import 'package:network/src/utils/network_connectivity.dart';

Future<BitZyResult<T>> checkNetworkResult<T>({
  required Future<Response<T>> Function() call,
  required NetworkConnectivity networkConnectivity,
  required String errorMessage,
}) async {
  final isConnected = await networkConnectivity.isConnected();

  if (isConnected) {
    try {
      final response = await call();

      if (response.statusCode == 200) {
        return Success(response.data as T);
      } else {
        final error = _parseError(response.data);
        return Error(
          DataException(
            message: error.message,
            responseCode: response.statusCode ?? 500,
          ),
        );
      }
    } catch (e) {
      return Error(IOException(message: errorMessage, cause: e));
    }
  } else {
    return const Error(NetworkConnectionException());
  }
}

ErrorResponse _parseError(dynamic errorBody) {
  try {
    if (errorBody is Map<String, dynamic>) {
      return ErrorResponse.fromJson(errorBody);
    } else {
      return ErrorResponse(message: null);
    }
  } catch (_) {
    return ErrorResponse(message: null);
  }
}
