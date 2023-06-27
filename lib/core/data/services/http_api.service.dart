import 'package:dio/dio.dart';
import 'package:logzilla/logzilla.dart';

import 'package:portfolio_web/core/constants/url.const.dart';

import 'package:portfolio_web/core/data/models/exceptions/backend.exception.dart';
import 'package:portfolio_web/core/data/models/exceptions/rest.exception.dart';
import 'package:portfolio_web/core/data/models/exceptions/timeout.exception.dart';

abstract class HttpApiService {
  late final Dio _dio;

  HttpApiService() {
    _dio = Dio(BaseOptions(
      baseUrl: UrlConst.domainName,
    ))
      ..interceptors.addAll([
        LogzillaInterceptor(),
      ]);
  }

  Future<dynamic> get(
    String absolutePath, {
    Map<String, dynamic> query = const {},
  }) async {
    return _execute(
      () => _dio.get(
        absolutePath,
        queryParameters: query,
      ),
    );
  }

  Future<dynamic> post(
    String absolutePath, {
    Map<String, dynamic> body = const {},
  }) async {
    return _execute(
      () => _dio.post(
        absolutePath,
        data: body,
      ),
    );
  }

  Future<dynamic> _execute(
    Future<Response<dynamic>> Function() action,
  ) async {
    try {
      final response = await action();
      return response.data;
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
