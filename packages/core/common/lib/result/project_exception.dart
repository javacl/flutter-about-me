sealed class ProjectException {
  const ProjectException();
}

class IOException extends ProjectException {
  final String message;
  final Object cause;
  const IOException({this.message = 'IO Exception', required this.cause});
}

class NetworkConnectionException extends ProjectException {
  final String message;
  const NetworkConnectionException({this.message = 'Network Connection Error'});
}

class DataException extends ProjectException {
  final String? message;
  final int responseCode;
  const DataException({this.message, required this.responseCode});
}

class ValidationException<T> extends ProjectException {
  final T errors;
  const ValidationException({required this.errors});
}
