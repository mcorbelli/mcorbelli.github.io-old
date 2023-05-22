import 'package:freezed_annotation/freezed_annotation.dart';

part 'backend.exception.freezed.dart';
part 'backend.exception.g.dart';

@freezed
class BackendException with _$BackendException implements Exception {
  const factory BackendException({
    required String error,
    required String description,
  }) = _BackEndException;

  factory BackendException.fromJson(Map<String, Object?> json) => _$BackendExceptionFromJson(json);
}
