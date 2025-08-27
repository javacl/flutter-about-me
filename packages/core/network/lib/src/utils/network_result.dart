import 'dart:async';

import 'package:common/result/project_exception.dart';
import 'package:common/result/project_result.dart';
import 'package:dio/dio.dart';
import 'package:network/src/model/error/error_response.dart';
import 'package:network/src/utils/network_connectivity.dart';

Stream<ProjectResult<T>> checkNetworkResult<T>({
  required Stream<Response<T>> Function() call,
  required NetworkConnectivity networkConnectivity,
  required String errorMessage,
}) async* {
  final isConnected = await networkConnectivity.isConnected();

  if (!isConnected) {
    yield const Error(NetworkConnectionException());
    return;
  }

  try {
    await for (final response in call()) {
      if (response.statusCode == 200) {
        yield Success(response.data as T);
      } else {
        final error = _parseError(response.data);
        yield Error(
          DataException(
            message: error.message,
            responseCode: response.statusCode ?? 500,
          ),
        );
      }
    }
  } catch (e) {
    yield Error(IOException(message: errorMessage, cause: e));
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
