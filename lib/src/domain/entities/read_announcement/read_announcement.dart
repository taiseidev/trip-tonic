import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_announcement.freezed.dart';

@freezed
class ReadAnnouncement with _$ReadAnnouncement {
  const factory ReadAnnouncement({
    // お知らせのID
    required String announcementId,

    // 作成日
    required DateTime createdAt,
  }) = _ReadAnnouncement;

  const ReadAnnouncement._();
}
