// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend.exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BackEndException _$$_BackEndExceptionFromJson(Map<String, dynamic> json) =>
    _$_BackEndException(
      error: json['error'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_BackEndExceptionToJson(_$_BackEndException instance) =>
    <String, dynamic>{
      'error': instance.error,
      'description': instance.description,
    };
