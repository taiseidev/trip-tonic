// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationList _$$_NotificationListFromJson(Map<String, dynamic> json) =>
    _$_NotificationList(
      notifications: (json['notifications'] as List<dynamic>?)
              ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Notification>[],
    );

Map<String, dynamic> _$$_NotificationListToJson(_$_NotificationList instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
    };
