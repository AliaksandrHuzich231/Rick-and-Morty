import 'package:shared_preferences/shared_preferences.dart';

part 'key_value_storage_provider_impl.dart';

abstract interface class KeyValueStorageProvider {
  factory KeyValueStorageProvider({
    required SharedPreferences sharedPreferences,
  }) = _KeyValueStorageProviderImpl;

  Future<void> write<T>(String key, T value);

  T? read<T>(String key);

  Future<void> delete(String key);

  Future<void> deleteAll();
}
