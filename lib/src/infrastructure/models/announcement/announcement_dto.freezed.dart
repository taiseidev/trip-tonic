// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementDto _$AnnouncementDtoFromJson(Map<String, dynamic> json) {
  return _AnnouncementDto.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementDto {
// （運営からの）お知らせのID
  String get announcementId => throw _privateConstructorUsedError; // お知らせのタイトル
  String get title => throw _privateConstructorUsedError; // お知らせの内容
  String get content => throw _privateConstructorUsedError; // 作成日
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError; // 更新日
  @TimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementDtoCopyWith<AnnouncementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementDtoCopyWith<$Res> {
  factory $AnnouncementDtoCopyWith(
          AnnouncementDto value, $Res Function(AnnouncementDto) then) =
      _$AnnouncementDtoCopyWithImpl<$Res, AnnouncementDto>;
  @useResult
  $Res call(
      {String announcementId,
      String title,
      String content,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt});
}

/// @nodoc
class _$AnnouncementDtoCopyWithImpl<$Res, $Val extends AnnouncementDto>
    implements $AnnouncementDtoCopyWith<$Res> {
  _$AnnouncementDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_AnnouncementDtoCopyWith<$Res>
    implements $AnnouncementDtoCopyWith<$Res> {
  factory _$$_AnnouncementDtoCopyWith(
          _$_AnnouncementDto value, $Res Function(_$_AnnouncementDto) then) =
      __$$_AnnouncementDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String announcementId,
      String title,
      String content,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime updatedAt});
}

/// @nodoc
class __$$_AnnouncementDtoCopyWithImpl<$Res>
    extends _$AnnouncementDtoCopyWithImpl<$Res, _$_AnnouncementDto>
    implements _$$_AnnouncementDtoCopyWith<$Res> {
  __$$_AnnouncementDtoCopyWithImpl(
      _$_AnnouncementDto _value, $Res Function(_$_AnnouncementDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_AnnouncementDto(
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
class _$_AnnouncementDto extends _AnnouncementDto {
  const _$_AnnouncementDto(
      {required this.announcementId,
      required this.title,
      required this.content,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.updatedAt})
      : super._();

  factory _$_AnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementDtoFromJson(json);

// （運営からの）お知らせのID
  @override
  final String announcementId;
// お知らせのタイトル
  @override
  final String title;
// お知らせの内容
  @override
  final String content;
// 作成日
  @override
  @TimestampConverter()
  final DateTime createdAt;
// 更新日
  @override
  @TimestampConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AnnouncementDto(announcementId: $announcementId, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnouncementDto &&
            (identical(other.announcementId, announcementId) ||
                other.announcementId == announcementId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, announcementId, title, content, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnouncementDtoCopyWith<_$_AnnouncementDto> get copyWith =>
      __$$_AnnouncementDtoCopyWithImpl<_$_AnnouncementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementDtoToJson(
      this,
    );
  }
}

abstract class _AnnouncementDto extends AnnouncementDto {
  const factory _AnnouncementDto(
          {required final String announcementId,
          required final String title,
          required final String content,
          @TimestampConverter() required final DateTime createdAt,
          @TimestampConverter() required final DateTime updatedAt}) =
      _$_AnnouncementDto;
  const _AnnouncementDto._() : super._();

  factory _AnnouncementDto.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementDto.fromJson;

  @override // （運営からの）お知らせのID
  String get announcementId;
  @override // お知らせのタイトル
  String get title;
  @override // お知らせの内容
  String get content;
  @override // 作成日
  @TimestampConverter()
  DateTime get createdAt;
  @override // 更新日
  @TimestampConverter()
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementDtoCopyWith<_$_AnnouncementDto> get copyWith =>
      throw _privateConstructorUsedError;
}
