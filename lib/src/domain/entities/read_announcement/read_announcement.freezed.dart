// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReadAnnouncement {
// お知らせのID
  String get announcementId => throw _privateConstructorUsedError; // 作成日
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReadAnnouncementCopyWith<ReadAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadAnnouncementCopyWith<$Res> {
  factory $ReadAnnouncementCopyWith(
          ReadAnnouncement value, $Res Function(ReadAnnouncement) then) =
      _$ReadAnnouncementCopyWithImpl<$Res, ReadAnnouncement>;
  @useResult
  $Res call({String announcementId, DateTime createdAt});
}

/// @nodoc
class _$ReadAnnouncementCopyWithImpl<$Res, $Val extends ReadAnnouncement>
    implements $ReadAnnouncementCopyWith<$Res> {
  _$ReadAnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      announcementId: null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadAnnouncementCopyWith<$Res>
    implements $ReadAnnouncementCopyWith<$Res> {
  factory _$$_ReadAnnouncementCopyWith(
          _$_ReadAnnouncement value, $Res Function(_$_ReadAnnouncement) then) =
      __$$_ReadAnnouncementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String announcementId, DateTime createdAt});
}

/// @nodoc
class __$$_ReadAnnouncementCopyWithImpl<$Res>
    extends _$ReadAnnouncementCopyWithImpl<$Res, _$_ReadAnnouncement>
    implements _$$_ReadAnnouncementCopyWith<$Res> {
  __$$_ReadAnnouncementCopyWithImpl(
      _$_ReadAnnouncement _value, $Res Function(_$_ReadAnnouncement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ReadAnnouncement(
      announcementId: null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ReadAnnouncement extends _ReadAnnouncement {
  const _$_ReadAnnouncement(
      {required this.announcementId, required this.createdAt})
      : super._();

// お知らせのID
  @override
  final String announcementId;
// 作成日
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ReadAnnouncement(announcementId: $announcementId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadAnnouncement &&
            (identical(other.announcementId, announcementId) ||
                other.announcementId == announcementId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, announcementId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadAnnouncementCopyWith<_$_ReadAnnouncement> get copyWith =>
      __$$_ReadAnnouncementCopyWithImpl<_$_ReadAnnouncement>(this, _$identity);
}

abstract class _ReadAnnouncement extends ReadAnnouncement {
  const factory _ReadAnnouncement(
      {required final String announcementId,
      required final DateTime createdAt}) = _$_ReadAnnouncement;
  const _ReadAnnouncement._() : super._();

  @override // お知らせのID
  String get announcementId;
  @override // 作成日
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReadAnnouncementCopyWith<_$_ReadAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}
