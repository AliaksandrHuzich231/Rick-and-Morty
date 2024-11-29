abstract base class UseCase<Payload, Output> {
  const UseCase();

  Output execute(Payload payload);
}

abstract base class FutureUseCase<Payload, Output> {
  const FutureUseCase();

  Future<Output> execute(Payload payload);
}

abstract base class StreamUseCase<Payload, Output> {
  const StreamUseCase();

  Stream<Output> execute(Payload payload);
}

final class NoParams {
  const NoParams();
}
