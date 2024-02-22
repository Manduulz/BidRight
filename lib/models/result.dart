abstract class Result<T> {
  const Result();

  Result<U> map<U>(U Function(T) mapper);

  U join<U>(
      {required U Function(T) onSuccess,
      required U Function(Object) onFailure});

  Result<U> flatMap<U>(Result<U> Function(T) mapper) => join(
        onSuccess: mapper,
        onFailure: (error) => Failure(error),
      );
}

class Success<T> extends Result<T> {
  final T value;

  const Success(this.value);

  @override
  Success<U> map<U>(U Function(T) mapper) => Success(mapper(value));

  @override
  U join<U>(
      {required U Function(T p1) onSuccess,
      required U Function(Object p1) onFailure}) {
    return onSuccess(value);
  }
}

class Failure extends Result<Never> {
  final Object error;

  const Failure(this.error);

  @override
  Failure map<U>(U Function(Never) mapper) => this;

  @override
  U join<U>(
      {required U Function(Never p1) onSuccess,
      required U Function(Object p1) onFailure}) {
    return onFailure(error);
  }
}
