import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/read_announcement/read_announcement.dart';

part 'read_announcement_list.freezed.dart';

@freezed
class ReadAnnouncementList with _$ReadAnnouncementList {
  const factory ReadAnnouncementList({
    // お知らせのリスト
    @Default(<ReadAnnouncement>[]) List<ReadAnnouncement> readAnnouncements,
  }) = _ReadAnnouncementList;

  const ReadAnnouncementList._();
}
