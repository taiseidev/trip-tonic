// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoryCreateState {
  CharacterList? get characters => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryCreateStateCopyWith<StoryCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCreateStateCopyWith<$Res> {
  factory $StoryCreateStateCopyWith(
          StoryCreateState value, $Res Function(StoryCreateState) then) =
      _$StoryCreateStateCopyWithImpl<$Res, StoryCreateState>;
  @useResult
  $Res call({CharacterList? characters, List<Genre> genres});

  $CharacterListCopyWith<$Res>? get characters;
}

/// @nodoc
class _$StoryCreateStateCopyWithImpl<$Res, $Val extends StoryCreateState>
    implements $StoryCreateStateCopyWith<$Res> {
  _$StoryCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = freezed,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharacterList?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterListCopyWith<$Res>? get characters {
    if (_value.characters == null) {
      return null;
    }

    return $CharacterListCopyWith<$Res>(_value.characters!, (value) {
      return _then(_value.copyWith(characters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoryCreateStateCopyWith<$Res>
    implements $StoryCreateStateCopyWith<$Res> {
  factory _$$_StoryCreateStateCopyWith(
          _$_StoryCreateState value, $Res Function(_$_StoryCreateState) then) =
      __$$_StoryCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterList? characters, List<Genre> genres});

  @override
  $CharacterListCopyWith<$Res>? get characters;
}

/// @nodoc
class __$$_StoryCreateStateCopyWithImpl<$Res>
    extends _$StoryCreateStateCopyWithImpl<$Res, _$_StoryCreateState>
    implements _$$_StoryCreateStateCopyWith<$Res> {
  __$$_StoryCreateStateCopyWithImpl(
      _$_StoryCreateState _value, $Res Function(_$_StoryCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = freezed,
    Object? genres = null,
  }) {
    return _then(_$_StoryCreateState(
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharacterList?,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc

class _$_StoryCreateState implements _StoryCreateState {
  const _$_StoryCreateState(
      {this.characters, required final List<Genre> genres})
      : _genres = genres;

  @override
  final CharacterList? characters;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'StoryCreateState(characters: $characters, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryCreateState &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, characters, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryCreateStateCopyWith<_$_StoryCreateState> get copyWith =>
      __$$_StoryCreateStateCopyWithImpl<_$_StoryCreateState>(this, _$identity);
}

abstract class _StoryCreateState implements StoryCreateState {
  const factory _StoryCreateState(
      {final CharacterList? characters,
      required final List<Genre> genres}) = _$_StoryCreateState;

  @override
  CharacterList? get characters;
  @override
  List<Genre> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_StoryCreateStateCopyWith<_$_StoryCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
