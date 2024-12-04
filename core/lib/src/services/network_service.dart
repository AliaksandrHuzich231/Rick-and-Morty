import 'package:http/http.dart';
import 'package:observe_internet_connectivity/observe_internet_connectivity.dart';

import '../../core.dart';

part 'app_internet_observing_strategy.dart';

abstract final class NetworkService {
  static final InternetConnectivity _instance = InternetConnectivity(
    internetObservingStrategy: _AppInternetObservingStrategy(),
  );

  static Future<bool> get hasConnection => _instance.hasInternetConnection;

  static Stream<bool> get observeConnection =>
      _instance.observeInternetConnection;
}
