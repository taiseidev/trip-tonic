// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreDTO _$GenreDTOFromJson(Map<String, dynamic> json) {
  return _GenreDTO.fromJson(json);
}

/// @nodoc
mixin _$GenreDTO {
  String get id => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDTOCopyWith<GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDTOCopyWith<$Res> {
  factory $GenreDTOCopyWith(GenreDTO value, $Res Function(GenreDTO) then) =
      _$GenreDTOCopyWithImpl<$Res, GenreDTO>;
  @useResult
  $Res call({String id, String genre});
}

/// @nodoc
class _$GenreDTOCopyWithImpl<$Res, $Val extends GenreDTO>
    implements $GenreDTOCopyWith<$Res> {
  _$GenreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genre = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreDTOCopyWith<$Res> implements $GenreDTOCopyWith<$Res> {
  factory _$$_GenreDTOCopyWith(
          _$_GenreDTO value, $Res Function(_$_GenreDTO) then) =
      __$$_GenreDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String genre});
}

/// @nodoc
class __$$_GenreDTOCopyWithImpl<$Res>
    extends _$GenreDTOCopyWithImpl<$Res, _$_GenreDTO>
    implements _$$_GenreDTOCopyWith<$Res> {
  __$$_GenreDTOCopyWithImpl(
      _$_GenreDTO _value, $Res Function(_$_GenreDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genre = null,
  }) {
    return _then(_$_GenreDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreDTO extends _GenreDTO {
  const _$_GenreDTO({required this.id, required this.genre}) : super._();

  factory _$_GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$$_GenreDTOFromJson(json);

  @override
  final String id;
  @override
  final String genre;

  @override
  String toString() {
    return 'GenreDTO(id: $id, genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, genre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreDTOCopyWith<_$_GenreDTO> get copyWith =>
      __$$_GenreDTOCopyWithImpl<_$_GenreDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreDTOToJson(
      this,
    );
  }
}

abstract class _GenreDTO extends GenreDTO {
  const factory _GenreDTO(
      {required final String id, required final String genre}) = _$_GenreDTO;
  const _GenreDTO._() : super._();

  factory _GenreDTO.fromJson(Map<String, dynamic> json) = _$_GenreDTO.fromJson;

  @override
  String get id;
  @override
  String get genre;
  @override
  @JsonKey(ignore: true)
  _$$_GenreDTOCopyWith<_$_GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
