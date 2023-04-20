import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement.dart';

part 'announcement_list.freezed.dart';

@freezed
class AnnouncementList with _$AnnouncementList {
  const factory AnnouncementList({
    // お知らせのリスト
    @Default(<Announcement>[]) List<Announcement> announcements,
  }) = _AnnouncementList;

  const AnnouncementList._();
}
