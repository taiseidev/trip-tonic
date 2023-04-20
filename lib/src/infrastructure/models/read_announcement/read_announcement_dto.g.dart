// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_announcement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadAnnouncementDto _$$_ReadAnnouncementDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ReadAnnouncementDto(
      announcementId: json['announcementId'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_ReadAnnouncementDtoToJson(
        _$_ReadAnnouncementDto instance) =>
    <String, dynamic>{
      'announcementId': instance.announcementId,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
