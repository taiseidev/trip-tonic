// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  int? get total => throw _privateConstructorUsedError;
  int? get totalHits => throw _privateConstructorUsedError;
  List<ImageResult>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call({int? total, int? totalHits, List<ImageResult>? hits});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$_SearchResultCopyWith(
          _$_SearchResult value, $Res Function(_$_SearchResult) then) =
      __$$_SearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, int? totalHits, List<ImageResult>? hits});
}

/// @nodoc
class __$$_SearchResultCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$_SearchResult>
    implements _$$_SearchResultCopyWith<$Res> {
  __$$_SearchResultCopyWithImpl(
      _$_SearchResult _value, $Res Function(_$_SearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? totalHits = freezed,
    Object? hits = freezed,
  }) {
    return _then(_$_SearchResult(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalHits: freezed == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int?,
      hits: freezed == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<ImageResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResult implements _SearchResult {
  _$_SearchResult({this.total, this.totalHits, final List<ImageResult>? hits})
      : _hits = hits;

  factory _$_SearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultFromJson(json);

  @override
  final int? total;
  @override
  final int? totalHits;
  final List<ImageResult>? _hits;
  @override
  List<ImageResult>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResult(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResult &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      __$$_SearchResultCopyWithImpl<_$_SearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  factory _SearchResult(
      {final int? total,
      final int? totalHits,
      final List<ImageResult>? hits}) = _$_SearchResult;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$_SearchResult.fromJson;

  @override
  int? get total;
  @override
  int? get totalHits;
  @override
  List<ImageResult>? get hits;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageResult _$ImageResultFromJson(Map<String, dynamic> json) {
  return _ImageResult.fromJson(json);
}

/// @nodoc
mixin _$ImageResult {
  int? get id => throw _privateConstructorUsedError;
  String? get pageURL => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get previewURL => throw _privateConstructorUsedError;
  int? get previewWidth => throw _privateConstructorUsedError;
  int? get previewHeight => throw _privateConstructorUsedError;
  String? get webformatURL => throw _privateConstructorUsedError;
  int? get webformatWidth => throw _privateConstructorUsedError;
  int? get webformatHeight => throw _privateConstructorUsedError;
  String? get largeImageURL => throw _privateConstructorUsedError;
  String? get fullHDURL => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  int? get imageWidth => throw _privateConstructorUsedError;
  int? get imageHeight => throw _privateConstructorUsedError;
  int? get imageSize => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  int? get downloads => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  int? get comments => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get userImageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageResultCopyWith<ImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResultCopyWith<$Res> {
  factory $ImageResultCopyWith(
          ImageResult value, $Res Function(ImageResult) then) =
      _$ImageResultCopyWithImpl<$Res, ImageResult>;
  @useResult
  $Res call(
      {int? id,
      String? pageURL,
      String? type,
      String? tags,
      String? previewURL,
      int? previewWidth,
      int? previewHeight,
      String? webformatURL,
      int? webformatWidth,
      int? webformatHeight,
      String? largeImageURL,
      String? fullHDURL,
      String? imageURL,
      int? imageWidth,
      int? imageHeight,
      int? imageSize,
      int? views,
      int? downloads,
      int? likes,
      int? comments,
      int? userId,
      String? user,
      String? userImageURL});
}

/// @nodoc
class _$ImageResultCopyWithImpl<$Res, $Val extends ImageResult>
    implements $ImageResultCopyWith<$Res> {
  _$ImageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageURL = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewURL = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatURL = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageURL = freezed,
    Object? fullHDURL = freezed,
    Object? imageURL = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageURL: freezed == pageURL
          ? _value.pageURL
          : pageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      previewURL: freezed == previewURL
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatURL: freezed == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageURL: freezed == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fullHDURL: freezed == fullHDURL
          ? _value.fullHDURL
          : fullHDURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageURL: freezed == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageResultCopyWith<$Res>
    implements $ImageResultCopyWith<$Res> {
  factory _$$_ImageResultCopyWith(
          _$_ImageResult value, $Res Function(_$_ImageResult) then) =
      __$$_ImageResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? pageURL,
      String? type,
      String? tags,
      String? previewURL,
      int? previewWidth,
      int? previewHeight,
      String? webformatURL,
      int? webformatWidth,
      int? webformatHeight,
      String? largeImageURL,
      String? fullHDURL,
      String? imageURL,
      int? imageWidth,
      int? imageHeight,
      int? imageSize,
      int? views,
      int? downloads,
      int? likes,
      int? comments,
      int? userId,
      String? user,
      String? userImageURL});
}

/// @nodoc
class __$$_ImageResultCopyWithImpl<$Res>
    extends _$ImageResultCopyWithImpl<$Res, _$_ImageResult>
    implements _$$_ImageResultCopyWith<$Res> {
  __$$_ImageResultCopyWithImpl(
      _$_ImageResult _value, $Res Function(_$_ImageResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pageURL = freezed,
    Object? type = freezed,
    Object? tags = freezed,
    Object? previewURL = freezed,
    Object? previewWidth = freezed,
    Object? previewHeight = freezed,
    Object? webformatURL = freezed,
    Object? webformatWidth = freezed,
    Object? webformatHeight = freezed,
    Object? largeImageURL = freezed,
    Object? fullHDURL = freezed,
    Object? imageURL = freezed,
    Object? imageWidth = freezed,
    Object? imageHeight = freezed,
    Object? imageSize = freezed,
    Object? views = freezed,
    Object? downloads = freezed,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
    Object? user = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(_$_ImageResult(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pageURL: freezed == pageURL
          ? _value.pageURL
          : pageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      previewURL: freezed == previewURL
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String?,
      previewWidth: freezed == previewWidth
          ? _value.previewWidth
          : previewWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      previewHeight: freezed == previewHeight
          ? _value.previewHeight
          : previewHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatURL: freezed == webformatURL
          ? _value.webformatURL
          : webformatURL // ignore: cast_nullable_to_non_nullable
              as String?,
      webformatWidth: freezed == webformatWidth
          ? _value.webformatWidth
          : webformatWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      webformatHeight: freezed == webformatHeight
          ? _value.webformatHeight
          : webformatHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      largeImageURL: freezed == largeImageURL
          ? _value.largeImageURL
          : largeImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fullHDURL: freezed == fullHDURL
          ? _value.fullHDURL
          : fullHDURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      imageWidth: freezed == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      imageHeight: freezed == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      userImageURL: freezed == userImageURL
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageResult implements _ImageResult {
  _$_ImageResult(
      {this.id,
      this.pageURL,
      this.type,
      this.tags,
      this.previewURL,
      this.previewWidth,
      this.previewHeight,
      this.webformatURL,
      this.webformatWidth,
      this.webformatHeight,
      this.largeImageURL,
      this.fullHDURL,
      this.imageURL,
      this.imageWidth,
      this.imageHeight,
      this.imageSize,
      this.views,
      this.downloads,
      this.likes,
      this.comments,
      this.userId,
      this.user,
      this.userImageURL});

  factory _$_ImageResult.fromJson(Map<String, dynamic> json) =>
      _$$_ImageResultFromJson(json);

  @override
  final int? id;
  @override
  final String? pageURL;
  @override
  final String? type;
  @override
  final String? tags;
  @override
  final String? previewURL;
  @override
  final int? previewWidth;
  @override
  final int? previewHeight;
  @override
  final String? webformatURL;
  @override
  final int? webformatWidth;
  @override
  final int? webformatHeight;
  @override
  final String? largeImageURL;
  @override
  final String? fullHDURL;
  @override
  final String? imageURL;
  @override
  final int? imageWidth;
  @override
  final int? imageHeight;
  @override
  final int? imageSize;
  @override
  final int? views;
  @override
  final int? downloads;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final int? userId;
  @override
  final String? user;
  @override
  final String? userImageURL;

  @override
  String toString() {
    return 'ImageResult(id: $id, pageURL: $pageURL, type: $type, tags: $tags, previewURL: $previewURL, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatURL: $webformatURL, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageURL: $largeImageURL, fullHDURL: $fullHDURL, imageURL: $imageURL, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pageURL, pageURL) || other.pageURL == pageURL) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.previewURL, previewURL) ||
                other.previewURL == previewURL) &&
            (identical(other.previewWidth, previewWidth) ||
                other.previewWidth == previewWidth) &&
            (identical(other.previewHeight, previewHeight) ||
                other.previewHeight == previewHeight) &&
            (identical(other.webformatURL, webformatURL) ||
                other.webformatURL == webformatURL) &&
            (identical(other.webformatWidth, webformatWidth) ||
                other.webformatWidth == webformatWidth) &&
            (identical(other.webformatHeight, webformatHeight) ||
                other.webformatHeight == webformatHeight) &&
            (identical(other.largeImageURL, largeImageURL) ||
                other.largeImageURL == largeImageURL) &&
            (identical(other.fullHDURL, fullHDURL) ||
                other.fullHDURL == fullHDURL) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userImageURL, userImageURL) ||
                other.userImageURL == userImageURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        pageURL,
        type,
        tags,
        previewURL,
        previewWidth,
        previewHeight,
        webformatURL,
        webformatWidth,
        webformatHeight,
        largeImageURL,
        fullHDURL,
        imageURL,
        imageWidth,
        imageHeight,
        imageSize,
        views,
        downloads,
        likes,
        comments,
        userId,
        user,
        userImageURL
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageResultCopyWith<_$_ImageResult> get copyWith =>
      __$$_ImageResultCopyWithImpl<_$_ImageResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageResultToJson(
      this,
    );
  }
}

abstract class _ImageResult implements ImageResult {
  factory _ImageResult(
      {final int? id,
      final String? pageURL,
      final String? type,
      final String? tags,
      final String? previewURL,
      final int? previewWidth,
      final int? previewHeight,
      final String? webformatURL,
      final int? webformatWidth,
      final int? webformatHeight,
      final String? largeImageURL,
      final String? fullHDURL,
      final String? imageURL,
      final int? imageWidth,
      final int? imageHeight,
      final int? imageSize,
      final int? views,
      final int? downloads,
      final int? likes,
      final int? comments,
      final int? userId,
      final String? user,
      final String? userImageURL}) = _$_ImageResult;

  factory _ImageResult.fromJson(Map<String, dynamic> json) =
      _$_ImageResult.fromJson;

  @override
  int? get id;
  @override
  String? get pageURL;
  @override
  String? get type;
  @override
  String? get tags;
  @override
  String? get previewURL;
  @override
  int? get previewWidth;
  @override
  int? get previewHeight;
  @override
  String? get webformatURL;
  @override
  int? get webformatWidth;
  @override
  int? get webformatHeight;
  @override
  String? get largeImageURL;
  @override
  String? get fullHDURL;
  @override
  String? get imageURL;
  @override
  int? get imageWidth;
  @override
  int? get imageHeight;
  @override
  int? get imageSize;
  @override
  int? get views;
  @override
  int? get downloads;
  @override
  int? get likes;
  @override
  int? get comments;
  @override
  int? get userId;
  @override
  String? get user;
  @override
  String? get userImageURL;
  @override
  @JsonKey(ignore: true)
  _$$_ImageResultCopyWith<_$_ImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}
