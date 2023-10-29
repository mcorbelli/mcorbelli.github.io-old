// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backend.exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackEndExceptionImpl _$$BackEndExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$BackEndExceptionImpl(
      error: json['error'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$BackEndExceptionImplToJson(
        _$BackEndExceptionImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'description': instance.description,
    };
