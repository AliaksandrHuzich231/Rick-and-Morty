import 'package:core/core.dart';

import '../../../data.dart';
import 'log_interceptor.dart';

final class DioConfig {
  final Dio _dio = Dio();

  Dio get dio => _dio;

  DioConfig() {
    _dio
      ..options.baseUrl = DataConstants.BASE_URL
      ..interceptors.addAll(
        <Interceptor>[
          const AppLogInterceptor(),
        ],
      );
  }
}
