// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String? get userId => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  bool get pushAnnouncementEnabled => throw _privateConstructorUsedError;
  bool get pushNotificationEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String? userId,
      String? iconUrl,
      String? email,
      bool isPremium,
      bool pushAnnouncementEnabled,
      bool pushNotificationEnabled});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? iconUrl = freezed,
    Object? email = freezed,
    Object? isPremium = null,
    Object? pushAnnouncementEnabled = null,
    Object? pushNotificationEnabled = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      pushAnnouncementEnabled: null == pushAnnouncementEnabled
          ? _value.pushAnnouncementEnabled
          : pushAnnouncementEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      pushNotificationEnabled: null == pushNotificationEnabled
          ? _value.pushNotificationEnabled
          : pushNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? iconUrl,
      String? email,
      bool isPremium,
      bool pushAnnouncementEnabled,
      bool pushNotificationEnabled});
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? iconUrl = freezed,
    Object? email = freezed,
    Object? isPremium = null,
    Object? pushAnnouncementEnabled = null,
    Object? pushNotificationEnabled = null,
  }) {
    return _then(_$_AppUser(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      pushAnnouncementEnabled: null == pushAnnouncementEnabled
          ? _value.pushAnnouncementEnabled
          : pushAnnouncementEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      pushNotificationEnabled: null == pushNotificationEnabled
          ? _value.pushNotificationEnabled
          : pushNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser extends _AppUser {
  const _$_AppUser(
      {this.userId,
      this.iconUrl,
      this.email,
      this.isPremium = false,
      this.pushAnnouncementEnabled = false,
      this.pushNotificationEnabled = false})
      : super._();

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String? userId;
  @override
  final String? iconUrl;
  @override
  final String? email;
  @override
  @JsonKey()
  final bool isPremium;
  @override
  @JsonKey()
  final bool pushAnnouncementEnabled;
  @override
  @JsonKey()
  final bool pushNotificationEnabled;

  @override
  String toString() {
    return 'AppUser(userId: $userId, iconUrl: $iconUrl, email: $email, isPremium: $isPremium, pushAnnouncementEnabled: $pushAnnouncementEnabled, pushNotificationEnabled: $pushNotificationEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(
                    other.pushAnnouncementEnabled, pushAnnouncementEnabled) ||
                other.pushAnnouncementEnabled == pushAnnouncementEnabled) &&
            (identical(
                    other.pushNotificationEnabled, pushNotificationEnabled) ||
                other.pushNotificationEnabled == pushNotificationEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, iconUrl, email,
      isPremium, pushAnnouncementEnabled, pushNotificationEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser extends AppUser {
  const factory _AppUser(
      {final String? userId,
      final String? iconUrl,
      final String? email,
      final bool isPremium,
      final bool pushAnnouncementEnabled,
      final bool pushNotificationEnabled}) = _$_AppUser;
  const _AppUser._() : super._();

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String? get userId;
  @override
  String? get iconUrl;
  @override
  String? get email;
  @override
  bool get isPremium;
  @override
  bool get pushAnnouncementEnabled;
  @override
  bool get pushNotificationEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
