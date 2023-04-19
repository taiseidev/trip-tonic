// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementDto _$$_AnnouncementDtoFromJson(Map<String, dynamic> json) =>
    _$_AnnouncementDto(
      announcementId: json['announcementId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$$_AnnouncementDtoToJson(_$_AnnouncementDto instance) =>
    <String, dynamic>{
      'announcementId': instance.announcementId,
      'title': instance.title,
      'content': instance.content,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
