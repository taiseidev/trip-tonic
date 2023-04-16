// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Novel _$$_NovelFromJson(Map<String, dynamic> json) => _$_Novel(
      novelId: json['novelId'] as String,
      userId: json['userId'] as String,
      genreId: json['genreId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      isPrivate: json['isPrivate'] as bool? ?? false,
      backgroundImage: json['backgroundImage'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_NovelToJson(_$_Novel instance) => <String, dynamic>{
      'novelId': instance.novelId,
      'userId': instance.userId,
      'genreId': instance.genreId,
      'title': instance.title,
      'content': instance.content,
      'isPrivate': instance.isPrivate,
      'backgroundImage': instance.backgroundImage,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
