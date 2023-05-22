import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest.exception.freezed.dart';

@freezed
class RestException with _$RestException implements Exception {
  const factory RestException(String message) = _RestException;
}
