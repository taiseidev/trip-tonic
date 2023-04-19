import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement.dart';

part 'announcement_list.freezed.dart';
part 'announcement_list.g.dart';

@freezed
class AnnouncementList with _$AnnouncementList {
  const factory AnnouncementList({
    // お知らせのリスト
    @Default(<Announcement>[]) List<Announcement> announcements,
  }) = _AnnouncementList;

  const AnnouncementList._();

  factory AnnouncementList.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementListFromJson(json);
}
