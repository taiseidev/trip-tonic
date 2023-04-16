// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Novel _$NovelFromJson(Map<String, dynamic> json) {
  return _Novel.fromJson(json);
}

/// @nodoc
mixin _$Novel {
// 小説のID
  String get novelId => throw _privateConstructorUsedError; // 小説を作成したユーザのID
  String get userId => throw _privateConstructorUsedError; // 小説のジャンル
  String get genreId => throw _privateConstructorUsedError; // 小説のタイトル
  String get title => throw _privateConstructorUsedError; // 小説の内容
  String get content => throw _privateConstructorUsedError; // 公開設定
  bool get isPrivate => throw _privateConstructorUsedError; // 小説の背景画像
  String get backgroundImage => throw _privateConstructorUsedError; // 作成日
  DateTime get createdAt => throw _privateConstructorUsedError; // 更新日
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelCopyWith<Novel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelCopyWith<$Res> {
  factory $NovelCopyWith(Novel value, $Res Function(Novel) then) =
      _$NovelCopyWithImpl<$Res, Novel>;
  @useResult
  $Res call(
      {String novelId,
      String userId,
      String genreId,
      String title,
      String content,
      bool isPrivate,
      String backgroundImage,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$NovelCopyWithImpl<$Res, $Val extends Novel>
    implements $NovelCopyWith<$Res> {
  _$NovelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novelId = null,
    Object? userId = null,
    Object? genreId = null,
    Object? title = null,
    Object? content = null,
    Object? isPrivate = null,
    Object? backgroundImage = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      novelId: null == novelId
          ? _value.novelId
          : novelId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      genreId: null == genreId
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NovelCopyWith<$Res> implements $NovelCopyWith<$Res> {
  factory _$$_NovelCopyWith(_$_Novel value, $Res Function(_$_Novel) then) =
      __$$_NovelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String novelId,
      String userId,
      String genreId,
      String title,
      String content,
      bool isPrivate,
      String backgroundImage,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_NovelCopyWithImpl<$Res> extends _$NovelCopyWithImpl<$Res, _$_Novel>
    implements _$$_NovelCopyWith<$Res> {
  __$$_NovelCopyWithImpl(_$_Novel _value, $Res Function(_$_Novel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novelId = null,
    Object? userId = null,
    Object? genreId = null,
    Object? title = null,
    Object? content = null,
    Object? isPrivate = null,
    Object? backgroundImage = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Novel(
      novelId: null == novelId
          ? _value.novelId
          : novelId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      genreId: null == genreId
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Novel extends _Novel {
  const _$_Novel(
      {required this.novelId,
      required this.userId,
      required this.genreId,
      required this.title,
      required this.content,
      this.isPrivate = false,
      required this.backgroundImage,
      required this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_Novel.fromJson(Map<String, dynamic> json) =>
      _$$_NovelFromJson(json);

// 小説のID
  @override
  final String novelId;
// 小説を作成したユーザのID
  @override
  final String userId;
// 小説のジャンル
  @override
  final String genreId;
// 小説のタイトル
  @override
  final String title;
// 小説の内容
  @override
  final String content;
// 公開設定
  @override
  @JsonKey()
  final bool isPrivate;
// 小説の背景画像
  @override
  final String backgroundImage;
// 作成日
  @override
  final DateTime createdAt;
// 更新日
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Novel(novelId: $novelId, userId: $userId, genreId: $genreId, title: $title, content: $content, isPrivate: $isPrivate, backgroundImage: $backgroundImage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Novel &&
            (identical(other.novelId, novelId) || other.novelId == novelId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.genreId, genreId) || other.genreId == genreId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, novelId, userId, genreId, title,
      content, isPrivate, backgroundImage, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelCopyWith<_$_Novel> get copyWith =>
      __$$_NovelCopyWithImpl<_$_Novel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NovelToJson(
      this,
    );
  }
}

abstract class _Novel extends Novel {
  const factory _Novel(
      {required final String novelId,
      required final String userId,
      required final String genreId,
      required final String title,
      required final String content,
      final bool isPrivate,
      required final String backgroundImage,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$_Novel;
  const _Novel._() : super._();

  factory _Novel.fromJson(Map<String, dynamic> json) = _$_Novel.fromJson;

  @override // 小説のID
  String get novelId;
  @override // 小説を作成したユーザのID
  String get userId;
  @override // 小説のジャンル
  String get genreId;
  @override // 小説のタイトル
  String get title;
  @override // 小説の内容
  String get content;
  @override // 公開設定
  bool get isPrivate;
  @override // 小説の背景画像
  String get backgroundImage;
  @override // 作成日
  DateTime get createdAt;
  @override // 更新日
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NovelCopyWith<_$_Novel> get copyWith =>
      throw _privateConstructorUsedError;
}
