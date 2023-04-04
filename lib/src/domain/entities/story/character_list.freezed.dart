// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterList {
  List<Character> get characters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterListCopyWith<CharacterList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListCopyWith<$Res> {
  factory $CharacterListCopyWith(
          CharacterList value, $Res Function(CharacterList) then) =
      _$CharacterListCopyWithImpl<$Res, CharacterList>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class _$CharacterListCopyWithImpl<$Res, $Val extends CharacterList>
    implements $CharacterListCopyWith<$Res> {
  _$CharacterListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterListCopyWith<$Res>
    implements $CharacterListCopyWith<$Res> {
  factory _$$_CharacterListCopyWith(
          _$_CharacterList value, $Res Function(_$_CharacterList) then) =
      __$$_CharacterListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$_CharacterListCopyWithImpl<$Res>
    extends _$CharacterListCopyWithImpl<$Res, _$_CharacterList>
    implements _$$_CharacterListCopyWith<$Res> {
  __$$_CharacterListCopyWithImpl(
      _$_CharacterList _value, $Res Function(_$_CharacterList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$_CharacterList(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_CharacterList extends _CharacterList {
  const _$_CharacterList(
      {final List<Character> characters = const <Character>[]})
      : _characters = characters,
        super._();

  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharacterList(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterList &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterListCopyWith<_$_CharacterList> get copyWith =>
      __$$_CharacterListCopyWithImpl<_$_CharacterList>(this, _$identity);
}

abstract class _CharacterList extends CharacterList {
  const factory _CharacterList({final List<Character> characters}) =
      _$_CharacterList;
  const _CharacterList._() : super._();

  @override
  List<Character> get characters;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListCopyWith<_$_CharacterList> get copyWith =>
      throw _privateConstructorUsedError;
}
