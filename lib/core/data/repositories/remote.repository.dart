import 'package:super_network_logger/super_network_logger.dart';
import 'package:dio/dio.dart';

import 'package:portfolio_web/core/constants/url.const.dart';
import 'package:portfolio_web/core/data/models/exceptions/backend.exception.dart';
import 'package:portfolio_web/core/data/models/exceptions/rest.exception.dart';
import 'package:portfolio_web/core/data/models/exceptions/timeout.exception.dart';

class RemoteRepository {
  late Dio _dio;

  RemoteRepository() {
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
    } on DioException catch (error) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          throw TimeoutException(error.type);
        case DioExceptionType.badResponse:
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
