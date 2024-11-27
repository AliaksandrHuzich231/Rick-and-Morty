part 'cache_provider_impl.dart';

abstract interface class CacheProvider {
  factory CacheProvider() = _CacheProviderImpl;

  Future<void> insert<T>(T value);

  Future<List<T>> retrieveAll<T>();

  Future<void> update<T>(T value);

  Future<void> delete(int id);
}
