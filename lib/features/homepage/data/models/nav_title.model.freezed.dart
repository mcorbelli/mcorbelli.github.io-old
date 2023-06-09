// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_title.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavTitle {
  String get label => throw _privateConstructorUsedError;
  IconData? get icon => throw _privateConstructorUsedError;
  AppRoutes? get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavTitleCopyWith<NavTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavTitleCopyWith<$Res> {
  factory $NavTitleCopyWith(NavTitle value, $Res Function(NavTitle) then) =
      _$NavTitleCopyWithImpl<$Res, NavTitle>;
  @useResult
  $Res call({String label, IconData? icon, AppRoutes? route});
}

/// @nodoc
class _$NavTitleCopyWithImpl<$Res, $Val extends NavTitle>
    implements $NavTitleCopyWith<$Res> {
  _$NavTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? icon = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as AppRoutes?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavTitleCopyWith<$Res> implements $NavTitleCopyWith<$Res> {
  factory _$$_NavTitleCopyWith(
          _$_NavTitle value, $Res Function(_$_NavTitle) then) =
      __$$_NavTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, IconData? icon, AppRoutes? route});
}

/// @nodoc
class __$$_NavTitleCopyWithImpl<$Res>
    extends _$NavTitleCopyWithImpl<$Res, _$_NavTitle>
    implements _$$_NavTitleCopyWith<$Res> {
  __$$_NavTitleCopyWithImpl(
      _$_NavTitle _value, $Res Function(_$_NavTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? icon = freezed,
    Object? route = freezed,
  }) {
    return _then(_$_NavTitle(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as AppRoutes?,
    ));
  }
}

/// @nodoc

class _$_NavTitle implements _NavTitle {
  const _$_NavTitle({required this.label, this.icon, this.route});

  @override
  final String label;
  @override
  final IconData? icon;
  @override
  final AppRoutes? route;

  @override
  String toString() {
    return 'NavTitle(label: $label, icon: $icon, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavTitle &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, icon, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavTitleCopyWith<_$_NavTitle> get copyWith =>
      __$$_NavTitleCopyWithImpl<_$_NavTitle>(this, _$identity);
}

abstract class _NavTitle implements NavTitle {
  const factory _NavTitle(
      {required final String label,
      final IconData? icon,
      final AppRoutes? route}) = _$_NavTitle;

  @override
  String get label;
  @override
  IconData? get icon;
  @override
  AppRoutes? get route;
  @override
  @JsonKey(ignore: true)
  _$$_NavTitleCopyWith<_$_NavTitle> get copyWith =>
      throw _privateConstructorUsedError;
}
