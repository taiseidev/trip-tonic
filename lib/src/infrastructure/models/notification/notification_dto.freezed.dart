// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationDto {
// お知らせのID
  String get notificationId => throw _privateConstructorUsedError; // お知らせのタイトル
  String get title => throw _privateConstructorUsedError; // お知らせの内容
  String get content => throw _privateConstructorUsedError; // 既読状態
  bool get isRead => throw _privateConstructorUsedError; // 作成日
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res, NotificationDto>;
  @useResult
  $Res call(
      {String notificationId,
      String title,
      String content,
      bool isRead,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res, $Val extends NotificationDto>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? title = null,
    Object? content = null,
    Object? isRead = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$$_NotificationDtoCopyWith(
          _$_NotificationDto value, $Res Function(_$_NotificationDto) then) =
      __$$_NotificationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notificationId,
      String title,
      String content,
      bool isRead,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$$_NotificationDtoCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res, _$_NotificationDto>
    implements _$$_NotificationDtoCopyWith<$Res> {
  __$$_NotificationDtoCopyWithImpl(
      _$_NotificationDto _value, $Res Function(_$_NotificationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? title = null,
    Object? content = null,
    Object? isRead = null,
    Object? createdAt = null,
  }) {
    return _then(_$_NotificationDto(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {required this.notificationId,
      required this.title,
      required this.content,
      required this.isRead,
      @TimestampConverter() required this.createdAt})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDtoFromJson(json);

// お知らせのID
  @override
  final String notificationId;
// お知らせのタイトル
  @override
  final String title;
// お知らせの内容
  @override
  final String content;
// 既読状態
  @override
  final bool isRead;
// 作成日
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'NotificationDto(notificationId: $notificationId, title: $title, content: $content, isRead: $isRead, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationDto &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, notificationId, title, content, isRead, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationDtoCopyWith<_$_NotificationDto> get copyWith =>
      __$$_NotificationDtoCopyWithImpl<_$_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDtoToJson(
      this,
    );
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
          {required final String notificationId,
          required final String title,
          required final String content,
          required final bool isRead,
          @TimestampConverter() required final DateTime createdAt}) =
      _$_NotificationDto;
  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override // お知らせのID
  String get notificationId;
  @override // お知らせのタイトル
  String get title;
  @override // お知らせの内容
  String get content;
  @override // 既読状態
  bool get isRead;
  @override // 作成日
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDtoCopyWith<_$_NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
