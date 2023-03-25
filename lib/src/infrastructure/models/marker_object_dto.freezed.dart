// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_object_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarkerObjectDTO _$MarkerObjectDTOFromJson(Map<String, dynamic> json) {
  return _MarkerObjectDTO.fromJson(json);
}

/// @nodoc
mixin _$MarkerObjectDTO {
  String get id => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkerObjectDTOCopyWith<MarkerObjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerObjectDTOCopyWith<$Res> {
  factory $MarkerObjectDTOCopyWith(
          MarkerObjectDTO value, $Res Function(MarkerObjectDTO) then) =
      _$MarkerObjectDTOCopyWithImpl<$Res, MarkerObjectDTO>;
  @useResult
  $Res call(
      {String id,
      String genre,
      String country,
      double latitude,
      double longitude,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class _$MarkerObjectDTOCopyWithImpl<$Res, $Val extends MarkerObjectDTO>
    implements $MarkerObjectDTOCopyWith<$Res> {
  _$MarkerObjectDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genre = null,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarkerObjectDTOCopyWith<$Res>
    implements $MarkerObjectDTOCopyWith<$Res> {
  factory _$$_MarkerObjectDTOCopyWith(
          _$_MarkerObjectDTO value, $Res Function(_$_MarkerObjectDTO) then) =
      __$$_MarkerObjectDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String genre,
      String country,
      double latitude,
      double longitude,
      @TimestampConverter() DateTime createdAt});
}

/// @nodoc
class __$$_MarkerObjectDTOCopyWithImpl<$Res>
    extends _$MarkerObjectDTOCopyWithImpl<$Res, _$_MarkerObjectDTO>
    implements _$$_MarkerObjectDTOCopyWith<$Res> {
  __$$_MarkerObjectDTOCopyWithImpl(
      _$_MarkerObjectDTO _value, $Res Function(_$_MarkerObjectDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genre = null,
    Object? country = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? createdAt = null,
  }) {
    return _then(_$_MarkerObjectDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarkerObjectDTO extends _MarkerObjectDTO {
  const _$_MarkerObjectDTO(
      {required this.id,
      required this.genre,
      required this.country,
      required this.latitude,
      required this.longitude,
      @TimestampConverter() required this.createdAt})
      : super._();

  factory _$_MarkerObjectDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MarkerObjectDTOFromJson(json);

  @override
  final String id;
  @override
  final String genre;
  @override
  final String country;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @TimestampConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'MarkerObjectDTO(id: $id, genre: $genre, country: $country, latitude: $latitude, longitude: $longitude, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarkerObjectDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, genre, country, latitude, longitude, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarkerObjectDTOCopyWith<_$_MarkerObjectDTO> get copyWith =>
      __$$_MarkerObjectDTOCopyWithImpl<_$_MarkerObjectDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarkerObjectDTOToJson(
      this,
    );
  }
}

abstract class _MarkerObjectDTO extends MarkerObjectDTO {
  const factory _MarkerObjectDTO(
          {required final String id,
          required final String genre,
          required final String country,
          required final double latitude,
          required final double longitude,
          @TimestampConverter() required final DateTime createdAt}) =
      _$_MarkerObjectDTO;
  const _MarkerObjectDTO._() : super._();

  factory _MarkerObjectDTO.fromJson(Map<String, dynamic> json) =
      _$_MarkerObjectDTO.fromJson;

  @override
  String get id;
  @override
  String get genre;
  @override
  String get country;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MarkerObjectDTOCopyWith<_$_MarkerObjectDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
