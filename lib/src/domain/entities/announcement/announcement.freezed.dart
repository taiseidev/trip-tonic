// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) {
  return _Announcement.fromJson(json);
}

/// @nodoc
mixin _$Announcement {
// お知らせのID
  String get announcementId => throw _privateConstructorUsedError; // お知らせのタイトル
  String get title => throw _privateConstructorUsedError; // お知らせの内容
  String get content => throw _privateConstructorUsedError; // 既読済みかどうか
  bool get isRead => throw _privateConstructorUsedError; // 作成日
  DateTime get createdAt => throw _privateConstructorUsedError; // 更新日
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res, Announcement>;
  @useResult
  $Res call(
      {String announcementId,
      String title,
      String content,
      bool isRead,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res, $Val extends Announcement>
    implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
    Object? title = null,
    Object? content = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      announcementId: null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnouncementCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$$_AnnouncementCopyWith(
          _$_Announcement value, $Res Function(_$_Announcement) then) =
      __$$_AnnouncementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String announcementId,
      String title,
      String content,
      bool isRead,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_AnnouncementCopyWithImpl<$Res>
    extends _$AnnouncementCopyWithImpl<$Res, _$_Announcement>
    implements _$$_AnnouncementCopyWith<$Res> {
  __$$_AnnouncementCopyWithImpl(
      _$_Announcement _value, $Res Function(_$_Announcement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
    Object? title = null,
    Object? content = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Announcement(
      announcementId: null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Announcement extends _Announcement {
  const _$_Announcement(
      {required this.announcementId,
      required this.title,
      required this.content,
      required this.isRead,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$_Announcement.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementFromJson(json);

// お知らせのID
  @override
  final String announcementId;
// お知らせのタイトル
  @override
  final String title;
// お知らせの内容
  @override
  final String content;
// 既読済みかどうか
  @override
  final bool isRead;
// 作成日
  @override
  final DateTime createdAt;
// 更新日
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Announcement(announcementId: $announcementId, title: $title, content: $content, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Announcement &&
            (identical(other.announcementId, announcementId) ||
                other.announcementId == announcementId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, announcementId, title, content,
      isRead, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementCopyWith<_$_Announcement> get copyWith =>
      __$$_AnnouncementCopyWithImpl<_$_Announcement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementToJson(
      this,
    );
  }
}

abstract class _Announcement extends Announcement {
  const factory _Announcement(
      {required final String announcementId,
      required final String title,
      required final String content,
      required final bool isRead,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_Announcement;
  const _Announcement._() : super._();

  factory _Announcement.fromJson(Map<String, dynamic> json) =
      _$_Announcement.fromJson;

  @override // お知らせのID
  String get announcementId;
  @override // お知らせのタイトル
  String get title;
  @override // お知らせの内容
  String get content;
  @override // 既読済みかどうか
  bool get isRead;
  @override // 作成日
  DateTime get createdAt;
  @override // 更新日
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementCopyWith<_$_Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}
