// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      userId: json['userId'] as String?,
      iconUrl: json['iconUrl'] as String?,
      email: json['email'] as String?,
      isPremium: json['isPremium'] as bool? ?? false,
      pushAnnouncementEnabled:
          json['pushAnnouncementEnabled'] as bool? ?? false,
      pushNotificationEnabled:
          json['pushNotificationEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'iconUrl': instance.iconUrl,
      'email': instance.email,
      'isPremium': instance.isPremium,
      'pushAnnouncementEnabled': instance.pushAnnouncementEnabled,
      'pushNotificationEnabled': instance.pushNotificationEnabled,
    };
