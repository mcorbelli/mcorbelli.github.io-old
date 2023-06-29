// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_item.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavItem {
  AppRoutes get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavItemCopyWith<NavItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavItemCopyWith<$Res> {
  factory $NavItemCopyWith(NavItem value, $Res Function(NavItem) then) =
      _$NavItemCopyWithImpl<$Res, NavItem>;
  @useResult
  $Res call({AppRoutes route});
}

/// @nodoc
class _$NavItemCopyWithImpl<$Res, $Val extends NavItem>
    implements $NavItemCopyWith<$Res> {
  _$NavItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as AppRoutes,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavItemCopyWith<$Res> implements $NavItemCopyWith<$Res> {
  factory _$$_NavItemCopyWith(
          _$_NavItem value, $Res Function(_$_NavItem) then) =
      __$$_NavItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppRoutes route});
}

/// @nodoc
class __$$_NavItemCopyWithImpl<$Res>
    extends _$NavItemCopyWithImpl<$Res, _$_NavItem>
    implements _$$_NavItemCopyWith<$Res> {
  __$$_NavItemCopyWithImpl(_$_NavItem _value, $Res Function(_$_NavItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
  }) {
    return _then(_$_NavItem(
      null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as AppRoutes,
    ));
  }
}

/// @nodoc

class _$_NavItem implements _NavItem {
  const _$_NavItem(this.route);

  @override
  final AppRoutes route;

  @override
  String toString() {
    return 'NavItem(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavItem &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavItemCopyWith<_$_NavItem> get copyWith =>
      __$$_NavItemCopyWithImpl<_$_NavItem>(this, _$identity);
}

abstract class _NavItem implements NavItem {
  const factory _NavItem(final AppRoutes route) = _$_NavItem;

  @override
  AppRoutes get route;
  @override
  @JsonKey(ignore: true)
  _$$_NavItemCopyWith<_$_NavItem> get copyWith =>
      throw _privateConstructorUsedError;
}
