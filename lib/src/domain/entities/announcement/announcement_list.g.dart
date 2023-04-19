// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementList _$$_AnnouncementListFromJson(Map<String, dynamic> json) =>
    _$_AnnouncementList(
      announcements: (json['announcements'] as List<dynamic>?)
              ?.map((e) => Announcement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Announcement>[],
    );

Map<String, dynamic> _$$_AnnouncementListToJson(_$_AnnouncementList instance) =>
    <String, dynamic>{
      'announcements': instance.announcements,
    };
