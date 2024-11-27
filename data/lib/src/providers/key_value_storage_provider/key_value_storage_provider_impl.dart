part of 'key_value_storage_provider.dart';

final class _KeyValueStorageProviderImpl implements KeyValueStorageProvider {
  final SharedPreferences _sharedPreferences;

  const _KeyValueStorageProviderImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  Future<void> write<T>(String key, T value) async {
    switch (value.runtimeType) {
      case const (String):
        await _sharedPreferences.setString(key, value as String);
      case const (bool):
        await _sharedPreferences.setBool(key, value as bool);
      case const (int):
        await _sharedPreferences.setInt(key, value as int);
      case const (double):
        await _sharedPreferences.setDouble(key, value as double);
      case const (List<String>):
        await _sharedPreferences.setStringList(key, value as List<String>);
    }
  }

  @override
  Future<void> delete(String key) async => await _sharedPreferences.remove(key);

  @override
  Future<void> deleteAll() async => await _sharedPreferences.clear();

  @override
  T? read<T>(String key) => _sharedPreferences.get(key) as T?;
}
