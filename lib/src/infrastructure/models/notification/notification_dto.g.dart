// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$$_NotificationDtoFromJson(Map<String, dynamic> json) =>
    _$_NotificationDto(
      notificationId: json['notificationId'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      isRead: json['isRead'] as bool,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_NotificationDtoToJson(_$_NotificationDto instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'title': instance.title,
      'content': instance.content,
      'isRead': instance.isRead,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
