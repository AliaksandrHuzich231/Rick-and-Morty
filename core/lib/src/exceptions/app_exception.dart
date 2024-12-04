final class AppException implements Exception {
  final String message;

  const AppException({
    required this.message,
  });

  @override
  String toString() => message;
}

enum AppExceptionType {
  unknownAppException('Unknown app exception!'),
  emptyResponse('Empty response'),
  emptyMessage('Empty message'),
  notAuthorized('Not authorized'),
  serverError('Server error'),
  noConnection('No connection');

  final String message;

  const AppExceptionType(this.message);
}
