// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResult _$$_SearchResultFromJson(Map<String, dynamic> json) =>
    _$_SearchResult(
      total: json['total'] as int?,
      totalHits: json['totalHits'] as int?,
      hits: (json['hits'] as List<dynamic>?)
          ?.map((e) => ImageResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };

_$_ImageResult _$$_ImageResultFromJson(Map<String, dynamic> json) =>
    _$_ImageResult(
      id: json['id'] as int?,
      pageURL: json['pageURL'] as String?,
      type: json['type'] as String?,
      tags: json['tags'] as String?,
      previewURL: json['previewURL'] as String?,
      previewWidth: json['previewWidth'] as int?,
      previewHeight: json['previewHeight'] as int?,
      webformatURL: json['webformatURL'] as String?,
      webformatWidth: json['webformatWidth'] as int?,
      webformatHeight: json['webformatHeight'] as int?,
      largeImageURL: json['largeImageURL'] as String?,
      fullHDURL: json['fullHDURL'] as String?,
      imageURL: json['imageURL'] as String?,
      imageWidth: json['imageWidth'] as int?,
      imageHeight: json['imageHeight'] as int?,
      imageSize: json['imageSize'] as int?,
      views: json['views'] as int?,
      downloads: json['downloads'] as int?,
      likes: json['likes'] as int?,
      comments: json['comments'] as int?,
      userId: json['userId'] as int?,
      user: json['user'] as String?,
      userImageURL: json['userImageURL'] as String?,
    );

Map<String, dynamic> _$$_ImageResultToJson(_$_ImageResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pageURL': instance.pageURL,
      'type': instance.type,
      'tags': instance.tags,
      'previewURL': instance.previewURL,
      'previewWidth': instance.previewWidth,
      'previewHeight': instance.previewHeight,
      'webformatURL': instance.webformatURL,
      'webformatWidth': instance.webformatWidth,
      'webformatHeight': instance.webformatHeight,
      'largeImageURL': instance.largeImageURL,
      'fullHDURL': instance.fullHDURL,
      'imageURL': instance.imageURL,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'imageSize': instance.imageSize,
      'views': instance.views,
      'downloads': instance.downloads,
      'likes': instance.likes,
      'comments': instance.comments,
      'userId': instance.userId,
      'user': instance.user,
      'userImageURL': instance.userImageURL,
    };
