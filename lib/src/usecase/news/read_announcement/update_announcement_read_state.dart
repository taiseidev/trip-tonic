import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/readAnnouncement/read_announcement_repository.dart';

/// （運営からの）お知らせを既読にする
final updateAnnouncementReadStateProvider =
    Provider.family<Future<void> Function(), String>(
  (ref, announcementId) => () async => ref
      .read(readAnnouncementRepositoryProvider)
      .updateAnnouncementReadState(announcementId: announcementId),
);
