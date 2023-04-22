import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/readAnnouncement/read_announcement_repository.dart';

final updateAnnouncementReadStateProvider =
    Provider.family<Future<void> Function(), String>(
  (ref, announcementId) => () async => ref
      .read(readAnnouncementRepositoryProvider)
      .updateAnnouncementReadState(announcementId: announcementId),
);
