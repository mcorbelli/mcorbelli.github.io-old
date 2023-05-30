// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) manualThemeChange,
    required TResult Function() switchSystemMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? manualThemeChange,
    TResult? Function()? switchSystemMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? manualThemeChange,
    TResult Function()? switchSystemMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManualThemeChange value) manualThemeChange,
    required TResult Function(_SwitchSystemMode value) switchSystemMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManualThemeChange value)? manualThemeChange,
    TResult? Function(_SwitchSystemMode value)? switchSystemMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManualThemeChange value)? manualThemeChange,
    TResult Function(_SwitchSystemMode value)? switchSystemMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ManualThemeChangeCopyWith<$Res> {
  factory _$$_ManualThemeChangeCopyWith(_$_ManualThemeChange value,
          $Res Function(_$_ManualThemeChange) then) =
      __$$_ManualThemeChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_ManualThemeChangeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_ManualThemeChange>
    implements _$$_ManualThemeChangeCopyWith<$Res> {
  __$$_ManualThemeChangeCopyWithImpl(
      _$_ManualThemeChange _value, $Res Function(_$_ManualThemeChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_ManualThemeChange(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ManualThemeChange implements _ManualThemeChange {
  const _$_ManualThemeChange(this.themeMode);

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeEvent.manualThemeChange(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManualThemeChange &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManualThemeChangeCopyWith<_$_ManualThemeChange> get copyWith =>
      __$$_ManualThemeChangeCopyWithImpl<_$_ManualThemeChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) manualThemeChange,
    required TResult Function() switchSystemMode,
  }) {
    return manualThemeChange(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? manualThemeChange,
    TResult? Function()? switchSystemMode,
  }) {
    return manualThemeChange?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? manualThemeChange,
    TResult Function()? switchSystemMode,
    required TResult orElse(),
  }) {
    if (manualThemeChange != null) {
      return manualThemeChange(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManualThemeChange value) manualThemeChange,
    required TResult Function(_SwitchSystemMode value) switchSystemMode,
  }) {
    return manualThemeChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManualThemeChange value)? manualThemeChange,
    TResult? Function(_SwitchSystemMode value)? switchSystemMode,
  }) {
    return manualThemeChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManualThemeChange value)? manualThemeChange,
    TResult Function(_SwitchSystemMode value)? switchSystemMode,
    required TResult orElse(),
  }) {
    if (manualThemeChange != null) {
      return manualThemeChange(this);
    }
    return orElse();
  }
}

abstract class _ManualThemeChange implements ThemeEvent {
  const factory _ManualThemeChange(final ThemeMode themeMode) =
      _$_ManualThemeChange;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$_ManualThemeChangeCopyWith<_$_ManualThemeChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SwitchSystemModeCopyWith<$Res> {
  factory _$$_SwitchSystemModeCopyWith(
          _$_SwitchSystemMode value, $Res Function(_$_SwitchSystemMode) then) =
      __$$_SwitchSystemModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SwitchSystemModeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$_SwitchSystemMode>
    implements _$$_SwitchSystemModeCopyWith<$Res> {
  __$$_SwitchSystemModeCopyWithImpl(
      _$_SwitchSystemMode _value, $Res Function(_$_SwitchSystemMode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SwitchSystemMode implements _SwitchSystemMode {
  const _$_SwitchSystemMode();

  @override
  String toString() {
    return 'ThemeEvent.switchSystemMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SwitchSystemMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode themeMode) manualThemeChange,
    required TResult Function() switchSystemMode,
  }) {
    return switchSystemMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode themeMode)? manualThemeChange,
    TResult? Function()? switchSystemMode,
  }) {
    return switchSystemMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode themeMode)? manualThemeChange,
    TResult Function()? switchSystemMode,
    required TResult orElse(),
  }) {
    if (switchSystemMode != null) {
      return switchSystemMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManualThemeChange value) manualThemeChange,
    required TResult Function(_SwitchSystemMode value) switchSystemMode,
  }) {
    return switchSystemMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManualThemeChange value)? manualThemeChange,
    TResult? Function(_SwitchSystemMode value)? switchSystemMode,
  }) {
    return switchSystemMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManualThemeChange value)? manualThemeChange,
    TResult Function(_SwitchSystemMode value)? switchSystemMode,
    required TResult orElse(),
  }) {
    if (switchSystemMode != null) {
      return switchSystemMode(this);
    }
    return orElse();
  }
}

abstract class _SwitchSystemMode implements ThemeEvent {
  const factory _SwitchSystemMode() = _$_SwitchSystemMode;
}

ThemeState _$ThemeStateFromJson(Map<String, dynamic> json) {
  return _ThemeState.fromJson(json);
}

/// @nodoc
mixin _$ThemeState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  bool get followSystem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeMode themeMode, bool followSystem});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? followSystem = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      followSystem: null == followSystem
          ? _value.followSystem
          : followSystem // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_ThemeStateCopyWith(
          _$_ThemeState value, $Res Function(_$_ThemeState) then) =
      __$$_ThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, bool followSystem});
}

/// @nodoc
class __$$_ThemeStateCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_ThemeState>
    implements _$$_ThemeStateCopyWith<$Res> {
  __$$_ThemeStateCopyWithImpl(
      _$_ThemeState _value, $Res Function(_$_ThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? followSystem = null,
  }) {
    return _then(_$_ThemeState(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      followSystem: null == followSystem
          ? _value.followSystem
          : followSystem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThemeState extends _ThemeState {
  const _$_ThemeState(
      {this.themeMode = ThemeMode.system, this.followSystem = true})
      : super._();

  factory _$_ThemeState.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeStateFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final bool followSystem;

  @override
  String toString() {
    return 'ThemeState(themeMode: $themeMode, followSystem: $followSystem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeState &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.followSystem, followSystem) ||
                other.followSystem == followSystem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, followSystem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      __$$_ThemeStateCopyWithImpl<_$_ThemeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThemeStateToJson(
      this,
    );
  }
}

abstract class _ThemeState extends ThemeState {
  const factory _ThemeState(
      {final ThemeMode themeMode, final bool followSystem}) = _$_ThemeState;
  const _ThemeState._() : super._();

  factory _ThemeState.fromJson(Map<String, dynamic> json) =
      _$_ThemeState.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  bool get followSystem;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
