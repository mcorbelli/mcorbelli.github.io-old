import 'package:dio/dio.dart';
import 'package:logzilla/src/logzilla.dart';

class LogzillaInterceptor extends Interceptor {
  late Logzilla _logger;

  LogzillaInterceptor() {
    _logger = const Logzilla('LogzillaInterceptor');
  }

  @override
  void onRequest(options, handler) {
    _logger.debug('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(response, handler) {
    _logger.debug('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(err, handler) {
    _logger.debug('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return super.onError(err, handler);
  }
}
