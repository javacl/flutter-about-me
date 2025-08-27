import 'package:common/result/project_exception.dart';

sealed class ProjectResult<T> {
  const ProjectResult();
}

class Success<T> extends ProjectResult<T> {
  final T data;

  const Success(this.data);
}

class Error extends ProjectResult<Never> {
  final ProjectException exception;

  const Error(this.exception);
}
