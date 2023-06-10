// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeout.exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeoutException {
  DioExceptionType get typeError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeoutExceptionCopyWith<TimeoutException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeoutExceptionCopyWith<$Res> {
  factory $TimeoutExceptionCopyWith(
          TimeoutException value, $Res Function(TimeoutException) then) =
      _$TimeoutExceptionCopyWithImpl<$Res, TimeoutException>;
  @useResult
  $Res call({DioExceptionType typeError});
}

/// @nodoc
class _$TimeoutExceptionCopyWithImpl<$Res, $Val extends TimeoutException>
    implements $TimeoutExceptionCopyWith<$Res> {
  _$TimeoutExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeError = null,
  }) {
    return _then(_value.copyWith(
      typeError: null == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as DioExceptionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeoutExceptionCopyWith<$Res>
    implements $TimeoutExceptionCopyWith<$Res> {
  factory _$$_TimeoutExceptionCopyWith(
          _$_TimeoutException value, $Res Function(_$_TimeoutException) then) =
      __$$_TimeoutExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DioExceptionType typeError});
}

/// @nodoc
class __$$_TimeoutExceptionCopyWithImpl<$Res>
    extends _$TimeoutExceptionCopyWithImpl<$Res, _$_TimeoutException>
    implements _$$_TimeoutExceptionCopyWith<$Res> {
  __$$_TimeoutExceptionCopyWithImpl(
      _$_TimeoutException _value, $Res Function(_$_TimeoutException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeError = null,
  }) {
    return _then(_$_TimeoutException(
      null == typeError
          ? _value.typeError
          : typeError // ignore: cast_nullable_to_non_nullable
              as DioExceptionType,
    ));
  }
}

/// @nodoc

class _$_TimeoutException implements _TimeoutException {
  const _$_TimeoutException(this.typeError);

  @override
  final DioExceptionType typeError;

  @override
  String toString() {
    return 'TimeoutException(typeError: $typeError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeoutException &&
            (identical(other.typeError, typeError) ||
                other.typeError == typeError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeoutExceptionCopyWith<_$_TimeoutException> get copyWith =>
      __$$_TimeoutExceptionCopyWithImpl<_$_TimeoutException>(this, _$identity);
}

abstract class _TimeoutException implements TimeoutException {
  const factory _TimeoutException(final DioExceptionType typeError) =
      _$_TimeoutException;

  @override
  DioExceptionType get typeError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeoutExceptionCopyWith<_$_TimeoutException> get copyWith =>
      throw _privateConstructorUsedError;
}
