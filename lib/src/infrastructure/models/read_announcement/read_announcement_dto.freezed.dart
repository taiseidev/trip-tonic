// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_announcement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadAnnouncementDto _$ReadAnnouncementDtoFromJson(Map<String, dynamic> json) {
  return _ReadAnnouncementDto.fromJson(json);
}

/// @nodoc
mixin _$ReadAnnouncementDto {
// お知らせのID
  String get announcementId => throw _privateConstructorUsedError; // 作成日
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadAnnouncementDtoCopyWith<ReadAnnouncementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadAnnouncementDtoCopyWith<$Res> {
  factory $ReadAnnouncementDtoCopyWith(
          ReadAnnouncementDto value, $Res Function(ReadAnnouncementDto) then) =
      _$ReadAnnouncementDtoCopyWithImpl<$Res, ReadAnnouncementDto>;
  @useResult
  $Res call({String announcementId, @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$ReadAnnouncementDtoCopyWithImpl<$Res, $Val extends ReadAnnouncementDto>
    implements $ReadAnnouncementDtoCopyWith<$Res> {
  _$ReadAnnouncementDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_ReadAnnouncementDtoCopyWith<$Res>
    implements $ReadAnnouncementDtoCopyWith<$Res> {
  factory _$$_ReadAnnouncementDtoCopyWith(_$_ReadAnnouncementDto value,
          $Res Function(_$_ReadAnnouncementDto) then) =
      __$$_ReadAnnouncementDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String announcementId, @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$$_ReadAnnouncementDtoCopyWithImpl<$Res>
    extends _$ReadAnnouncementDtoCopyWithImpl<$Res, _$_ReadAnnouncementDto>
    implements _$$_ReadAnnouncementDtoCopyWith<$Res> {
  __$$_ReadAnnouncementDtoCopyWithImpl(_$_ReadAnnouncementDto _value,
      $Res Function(_$_ReadAnnouncementDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ReadAnnouncementDto(
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
@JsonSerializable()
class _$_ReadAnnouncementDto extends _ReadAnnouncementDto {
  const _$_ReadAnnouncementDto(
      {required this.announcementId,
      @TimestampConverter() required this.createdAt})
      : super._();

  factory _$_ReadAnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReadAnnouncementDtoFromJson(json);

// お知らせのID
  @override
  final String announcementId;
// 作成日
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'ReadAnnouncementDto(announcementId: $announcementId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadAnnouncementDto &&
            (identical(other.announcementId, announcementId) ||
                other.announcementId == announcementId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, announcementId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadAnnouncementDtoCopyWith<_$_ReadAnnouncementDto> get copyWith =>
      __$$_ReadAnnouncementDtoCopyWithImpl<_$_ReadAnnouncementDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadAnnouncementDtoToJson(
      this,
    );
  }
}

abstract class _ReadAnnouncementDto extends ReadAnnouncementDto {
  const factory _ReadAnnouncementDto(
          {required final String announcementId,
          @TimestampConverter() required final DateTime createdAt}) =
      _$_ReadAnnouncementDto;
  const _ReadAnnouncementDto._() : super._();

  factory _ReadAnnouncementDto.fromJson(Map<String, dynamic> json) =
      _$_ReadAnnouncementDto.fromJson;

  @override // お知らせのID
  String get announcementId;
  @override // 作成日
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReadAnnouncementDtoCopyWith<_$_ReadAnnouncementDto> get copyWith =>
      throw _privateConstructorUsedError;
}
