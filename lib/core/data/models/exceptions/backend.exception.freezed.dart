// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backend.exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackendException _$BackendExceptionFromJson(Map<String, dynamic> json) {
  return _BackEndException.fromJson(json);
}

/// @nodoc
mixin _$BackendException {
  String get error => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackendExceptionCopyWith<BackendException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackendExceptionCopyWith<$Res> {
  factory $BackendExceptionCopyWith(
          BackendException value, $Res Function(BackendException) then) =
      _$BackendExceptionCopyWithImpl<$Res, BackendException>;
  @useResult
  $Res call({String error, String description});
}

/// @nodoc
class _$BackendExceptionCopyWithImpl<$Res, $Val extends BackendException>
    implements $BackendExceptionCopyWith<$Res> {
  _$BackendExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BackEndExceptionCopyWith<$Res>
    implements $BackendExceptionCopyWith<$Res> {
  factory _$$_BackEndExceptionCopyWith(
          _$_BackEndException value, $Res Function(_$_BackEndException) then) =
      __$$_BackEndExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String description});
}

/// @nodoc
class __$$_BackEndExceptionCopyWithImpl<$Res>
    extends _$BackendExceptionCopyWithImpl<$Res, _$_BackEndException>
    implements _$$_BackEndExceptionCopyWith<$Res> {
  __$$_BackEndExceptionCopyWithImpl(
      _$_BackEndException _value, $Res Function(_$_BackEndException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? description = null,
  }) {
    return _then(_$_BackEndException(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BackEndException implements _BackEndException {
  const _$_BackEndException({required this.error, required this.description});

  factory _$_BackEndException.fromJson(Map<String, dynamic> json) =>
      _$$_BackEndExceptionFromJson(json);

  @override
  final String error;
  @override
  final String description;

  @override
  String toString() {
    return 'BackendException(error: $error, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackEndException &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackEndExceptionCopyWith<_$_BackEndException> get copyWith =>
      __$$_BackEndExceptionCopyWithImpl<_$_BackEndException>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BackEndExceptionToJson(
      this,
    );
  }
}

abstract class _BackEndException implements BackendException {
  const factory _BackEndException(
      {required final String error,
      required final String description}) = _$_BackEndException;

  factory _BackEndException.fromJson(Map<String, dynamic> json) =
      _$_BackEndException.fromJson;

  @override
  String get error;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_BackEndExceptionCopyWith<_$_BackEndException> get copyWith =>
      throw _privateConstructorUsedError;
}
