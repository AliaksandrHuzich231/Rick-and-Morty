import 'package:core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data.dart';

final class KeyValueStorageProvider {
  final SharedPreferences _sharedPreferences;

  const KeyValueStorageProvider({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

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
      default:
        throw const AppException(
          message: DataConstants.UNSUPPORTED_GENERIC_TYPE,
        );
    }
  }

  Future<void> delete(String key) async => await _sharedPreferences.remove(key);

  Future<void> deleteAll() async => await _sharedPreferences.clear();

  T? read<T>(String key) => _sharedPreferences.get(key) as T?;
}
