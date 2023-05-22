import 'package:super_network_logger/super_network_logger.dart';
import 'package:dio/dio.dart';

import 'package:portfolio_web/core/constants/url.const.dart';
import 'package:portfolio_web/core/data/models/exceptions/backend.exception.dart';
import 'package:portfolio_web/core/data/models/exceptions/rest.exception.dart';
import 'package:portfolio_web/core/data/models/exceptions/timeout.exception.dart';

class ApiRepository {
  late Dio _dio;

  ApiRepository() {
    _dio = Dio(BaseOptions(
      baseUrl: UrlConst.domainName,
    ))
      ..interceptors.addAll([
        SuperNetworkLogger(),
      ]);
  }

  Future<void> updateVisits() async {
    try {
      await _dio.post(UrlConst.updateVisits);
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectionTimeout:
        case DioErrorType.receiveTimeout:
          throw TimeoutException(error.type);
        case DioErrorType.badResponse:
          final response = error.response?.data;
          throw BackendException.fromJson(response);
        default:
          throw const RestException('Errore in fase di risposta');
      }
    } catch (error) {
      throw const RestException('Errore durante la chiamata');
    }
  }
}
