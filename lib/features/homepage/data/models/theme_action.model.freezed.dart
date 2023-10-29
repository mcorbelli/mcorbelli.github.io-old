// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_action.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeAction {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  String get tooltip => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeActionCopyWith<ThemeAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeActionCopyWith<$Res> {
  factory $ThemeActionCopyWith(
          ThemeAction value, $Res Function(ThemeAction) then) =
      _$ThemeActionCopyWithImpl<$Res, ThemeAction>;
  @useResult
  $Res call({ThemeMode themeMode, String tooltip, IconData icon, Color? color});
}

/// @nodoc
class _$ThemeActionCopyWithImpl<$Res, $Val extends ThemeAction>
    implements $ThemeActionCopyWith<$Res> {
  _$ThemeActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? tooltip = null,
    Object? icon = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      tooltip: null == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeActionImplCopyWith<$Res>
    implements $ThemeActionCopyWith<$Res> {
  factory _$$ThemeActionImplCopyWith(
          _$ThemeActionImpl value, $Res Function(_$ThemeActionImpl) then) =
      __$$ThemeActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, String tooltip, IconData icon, Color? color});
}

/// @nodoc
class __$$ThemeActionImplCopyWithImpl<$Res>
    extends _$ThemeActionCopyWithImpl<$Res, _$ThemeActionImpl>
    implements _$$ThemeActionImplCopyWith<$Res> {
  __$$ThemeActionImplCopyWithImpl(
      _$ThemeActionImpl _value, $Res Function(_$ThemeActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? tooltip = null,
    Object? icon = null,
    Object? color = freezed,
  }) {
    return _then(_$ThemeActionImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      tooltip: null == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$ThemeActionImpl implements _ThemeAction {
  const _$ThemeActionImpl(
      {required this.themeMode,
      required this.tooltip,
      required this.icon,
      this.color});

  @override
  final ThemeMode themeMode;
  @override
  final String tooltip;
  @override
  final IconData icon;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ThemeAction(themeMode: $themeMode, tooltip: $tooltip, icon: $icon, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeActionImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, tooltip, icon, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeActionImplCopyWith<_$ThemeActionImpl> get copyWith =>
      __$$ThemeActionImplCopyWithImpl<_$ThemeActionImpl>(this, _$identity);
}

abstract class _ThemeAction implements ThemeAction {
  const factory _ThemeAction(
      {required final ThemeMode themeMode,
      required final String tooltip,
      required final IconData icon,
      final Color? color}) = _$ThemeActionImpl;

  @override
  ThemeMode get themeMode;
  @override
  String get tooltip;
  @override
  IconData get icon;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$ThemeActionImplCopyWith<_$ThemeActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
