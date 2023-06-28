// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_icon.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SocialIcon {
  Socials get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocialIconCopyWith<SocialIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialIconCopyWith<$Res> {
  factory $SocialIconCopyWith(
          SocialIcon value, $Res Function(SocialIcon) then) =
      _$SocialIconCopyWithImpl<$Res, SocialIcon>;
  @useResult
  $Res call({Socials type});
}

/// @nodoc
class _$SocialIconCopyWithImpl<$Res, $Val extends SocialIcon>
    implements $SocialIconCopyWith<$Res> {
  _$SocialIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Socials,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialIconCopyWith<$Res>
    implements $SocialIconCopyWith<$Res> {
  factory _$$_SocialIconCopyWith(
          _$_SocialIcon value, $Res Function(_$_SocialIcon) then) =
      __$$_SocialIconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Socials type});
}

/// @nodoc
class __$$_SocialIconCopyWithImpl<$Res>
    extends _$SocialIconCopyWithImpl<$Res, _$_SocialIcon>
    implements _$$_SocialIconCopyWith<$Res> {
  __$$_SocialIconCopyWithImpl(
      _$_SocialIcon _value, $Res Function(_$_SocialIcon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_SocialIcon(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Socials,
    ));
  }
}

/// @nodoc

class _$_SocialIcon extends _SocialIcon {
  const _$_SocialIcon(this.type) : super._();

  @override
  final Socials type;

  @override
  String toString() {
    return 'SocialIcon(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialIcon &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialIconCopyWith<_$_SocialIcon> get copyWith =>
      __$$_SocialIconCopyWithImpl<_$_SocialIcon>(this, _$identity);
}

abstract class _SocialIcon extends SocialIcon {
  const factory _SocialIcon(final Socials type) = _$_SocialIcon;
  const _SocialIcon._() : super._();

  @override
  Socials get type;
  @override
  @JsonKey(ignore: true)
  _$$_SocialIconCopyWith<_$_SocialIcon> get copyWith =>
      throw _privateConstructorUsedError;
}
