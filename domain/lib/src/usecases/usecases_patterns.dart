abstract base class UseCase<Input, Output> {
  const UseCase();

  Output execute(Input input);
}

abstract base class FutureUseCase<Input, Output> {
  const FutureUseCase();

  Future<Output> execute(Input input);
}

abstract base class StreamUseCase<Input, Output> {
  const StreamUseCase();

  Stream<Output> execute(Input input);
}

final class NoParams {
  const NoParams();
}