import 'package:common/result/bitzy_exception.dart';

sealed class BitZyResult<T> {
  const BitZyResult();
}

class Success<T> extends BitZyResult<T> {
  final T data;

  const Success(this.data);
}

class Error extends BitZyResult<Never> {
  final BitZyException exception;

  const Error(this.exception);
}
