import 'package:core/core.dart';

final class AppException implements Exception {
  final String message;

  const AppException({
    required this.message,
  });

  const AppException.unknown() : message = AppConstants.UNKNOWN_ERROR;

  @override
  String toString() => message;
}
