import 'package:core/core.dart';

class ErrorHandler {
  //final AppEventNotifier _eventNotifier;

  ErrorHandler(//required AppEventNotifier eventNotifier,
      ); // : _eventNotifier = eventNotifier;

  Future<Never> handleError(DioException error) async {
    final Response<dynamic>? response = error.response;

    if (response == null) {
      throw AppException(message: AppExceptionType.emptyResponse.message);
    }

    if (error.type == DioExceptionType.connectionError) {
      //_eventNotifier.notify(const InternetConnectionLostEvent());
      throw AppException(message: AppExceptionType.noConnection.message);
    }

    final int? statusCode = response.statusCode;
    switch (statusCode) {
      case 400:
        {
          throw AppException(
            message: error.response?.data['message'] ??
                AppExceptionType.emptyMessage.message,
          );
        }
      case 401:
        {
          //_eventNotifier.notify(const UnauthorizedEvent());
          throw AppException(
            message: error.response?.data['message'] ??
                AppExceptionType.notAuthorized.message,
          );
        }
      case 500:
        {
          throw AppException(
            message:
                error.response?.data['message'] ?? AppExceptionType.serverError,
          );
        }
      default:
        {
          throw AppException(
            message: AppExceptionType.unknownAppException.message,
          );
        }
    }
  }
}