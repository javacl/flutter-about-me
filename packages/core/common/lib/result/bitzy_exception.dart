sealed class BitZyException {
  const BitZyException();
}

class IOException extends BitZyException {
  final String message;
  final Object cause;
  const IOException({this.message = 'IO Exception', required this.cause});
}

class NetworkConnectionException extends BitZyException {
  final String message;
  const NetworkConnectionException({this.message = 'Network Connection Error'});
}

class DataException extends BitZyException {
  final String? message;
  final int responseCode;
  const DataException({this.message, required this.responseCode});
}

class ValidationException<T> extends BitZyException {
  final T errors;
  const ValidationException({required this.errors});
}
