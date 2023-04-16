// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NovelList {
// 小説のリスト
  List<Novel> get novels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NovelListCopyWith<NovelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelListCopyWith<$Res> {
  factory $NovelListCopyWith(NovelList value, $Res Function(NovelList) then) =
      _$NovelListCopyWithImpl<$Res, NovelList>;
  @useResult
  $Res call({List<Novel> novels});
}

/// @nodoc
class _$NovelListCopyWithImpl<$Res, $Val extends NovelList>
    implements $NovelListCopyWith<$Res> {
  _$NovelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novels = null,
  }) {
    return _then(_value.copyWith(
      novels: null == novels
          ? _value.novels
          : novels // ignore: cast_nullable_to_non_nullable
              as List<Novel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NovelListCopyWith<$Res> implements $NovelListCopyWith<$Res> {
  factory _$$_NovelListCopyWith(
          _$_NovelList value, $Res Function(_$_NovelList) then) =
      __$$_NovelListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Novel> novels});
}

/// @nodoc
class __$$_NovelListCopyWithImpl<$Res>
    extends _$NovelListCopyWithImpl<$Res, _$_NovelList>
    implements _$$_NovelListCopyWith<$Res> {
  __$$_NovelListCopyWithImpl(
      _$_NovelList _value, $Res Function(_$_NovelList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novels = null,
  }) {
    return _then(_$_NovelList(
      novels: null == novels
          ? _value._novels
          : novels // ignore: cast_nullable_to_non_nullable
              as List<Novel>,
    ));
  }
}

/// @nodoc

class _$_NovelList extends _NovelList {
  const _$_NovelList({final List<Novel> novels = const <Novel>[]})
      : _novels = novels,
        super._();

// 小説のリスト
  final List<Novel> _novels;
// 小説のリスト
  @override
  @JsonKey()
  List<Novel> get novels {
    if (_novels is EqualUnmodifiableListView) return _novels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novels);
  }

  @override
  String toString() {
    return 'NovelList(novels: $novels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NovelList &&
            const DeepCollectionEquality().equals(other._novels, _novels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_novels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelListCopyWith<_$_NovelList> get copyWith =>
      __$$_NovelListCopyWithImpl<_$_NovelList>(this, _$identity);
}

abstract class _NovelList extends NovelList {
  const factory _NovelList({final List<Novel> novels}) = _$_NovelList;
  const _NovelList._() : super._();

  @override // 小説のリスト
  List<Novel> get novels;
  @override
  @JsonKey(ignore: true)
  _$$_NovelListCopyWith<_$_NovelList> get copyWith =>
      throw _privateConstructorUsedError;
}
