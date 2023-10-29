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
abstract class _$$BackEndExceptionImplCopyWith<$Res>
    implements $BackendExceptionCopyWith<$Res> {
  factory _$$BackEndExceptionImplCopyWith(_$BackEndExceptionImpl value,
          $Res Function(_$BackEndExceptionImpl) then) =
      __$$BackEndExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String description});
}

/// @nodoc
class __$$BackEndExceptionImplCopyWithImpl<$Res>
    extends _$BackendExceptionCopyWithImpl<$Res, _$BackEndExceptionImpl>
    implements _$$BackEndExceptionImplCopyWith<$Res> {
  __$$BackEndExceptionImplCopyWithImpl(_$BackEndExceptionImpl _value,
      $Res Function(_$BackEndExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? description = null,
  }) {
    return _then(_$BackEndExceptionImpl(
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
class _$BackEndExceptionImpl implements _BackEndException {
  const _$BackEndExceptionImpl(
      {required this.error, required this.description});

  factory _$BackEndExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackEndExceptionImplFromJson(json);

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
            other is _$BackEndExceptionImpl &&
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
  _$$BackEndExceptionImplCopyWith<_$BackEndExceptionImpl> get copyWith =>
      __$$BackEndExceptionImplCopyWithImpl<_$BackEndExceptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackEndExceptionImplToJson(
      this,
    );
  }
}

abstract class _BackEndException implements BackendException {
  const factory _BackEndException(
      {required final String error,
      required final String description}) = _$BackEndExceptionImpl;

  factory _BackEndException.fromJson(Map<String, dynamic> json) =
      _$BackEndExceptionImpl.fromJson;

  @override
  String get error;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BackEndExceptionImplCopyWith<_$BackEndExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
