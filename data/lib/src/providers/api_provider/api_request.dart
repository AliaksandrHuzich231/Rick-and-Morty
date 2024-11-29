part 'http_method.dart';

final class ApiRequest {
  final HttpMethod method;
  final String url;
  final Object? body;
  final Map<String, dynamic>? params;
  final Map<String, dynamic>? headers;

  const ApiRequest({
    required this.method,
    required this.url,
    this.body,
    this.params,
    this.headers,
  });
}
