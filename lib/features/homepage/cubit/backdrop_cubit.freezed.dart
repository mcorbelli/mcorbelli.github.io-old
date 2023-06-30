// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backdrop_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BackdropState {
  bool get isRevealed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BackdropStateCopyWith<BackdropState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackdropStateCopyWith<$Res> {
  factory $BackdropStateCopyWith(
          BackdropState value, $Res Function(BackdropState) then) =
      _$BackdropStateCopyWithImpl<$Res, BackdropState>;
  @useResult
  $Res call({bool isRevealed});
}

/// @nodoc
class _$BackdropStateCopyWithImpl<$Res, $Val extends BackdropState>
    implements $BackdropStateCopyWith<$Res> {
  _$BackdropStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRevealed = null,
  }) {
    return _then(_value.copyWith(
      isRevealed: null == isRevealed
          ? _value.isRevealed
          : isRevealed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BackdropStateCopyWith<$Res>
    implements $BackdropStateCopyWith<$Res> {
  factory _$$_BackdropStateCopyWith(
          _$_BackdropState value, $Res Function(_$_BackdropState) then) =
      __$$_BackdropStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isRevealed});
}

/// @nodoc
class __$$_BackdropStateCopyWithImpl<$Res>
    extends _$BackdropStateCopyWithImpl<$Res, _$_BackdropState>
    implements _$$_BackdropStateCopyWith<$Res> {
  __$$_BackdropStateCopyWithImpl(
      _$_BackdropState _value, $Res Function(_$_BackdropState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRevealed = null,
  }) {
    return _then(_$_BackdropState(
      isRevealed: null == isRevealed
          ? _value.isRevealed
          : isRevealed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BackdropState implements _BackdropState {
  const _$_BackdropState({this.isRevealed = false});

  @override
  @JsonKey()
  final bool isRevealed;

  @override
  String toString() {
    return 'BackdropState(isRevealed: $isRevealed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackdropState &&
            (identical(other.isRevealed, isRevealed) ||
                other.isRevealed == isRevealed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRevealed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackdropStateCopyWith<_$_BackdropState> get copyWith =>
      __$$_BackdropStateCopyWithImpl<_$_BackdropState>(this, _$identity);
}

abstract class _BackdropState implements BackdropState {
  const factory _BackdropState({final bool isRevealed}) = _$_BackdropState;

  @override
  bool get isRevealed;
  @override
  @JsonKey(ignore: true)
  _$$_BackdropStateCopyWith<_$_BackdropState> get copyWith =>
      throw _privateConstructorUsedError;
}
