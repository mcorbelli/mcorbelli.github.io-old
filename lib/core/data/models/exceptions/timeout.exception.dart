import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeout.exception.freezed.dart';

@freezed
class TimeoutException with _$TimeoutException implements Exception {
  const factory TimeoutException(DioErrorType typeError) = _TimeoutException;
}
