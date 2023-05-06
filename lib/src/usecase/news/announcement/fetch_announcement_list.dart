import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/infrastructure/repositories/announcement/announcement_repository.dart';

/// (運営からの)お知らせ一覧を取得
final fetchAnnouncementListProvider =
    FutureProvider.autoDispose<AnnouncementList>(
  (ref) async {
    // final announcementList =
    //     await ref.read(announcementRepositoryProvider).fetchNotificationList();

    // // 運営からのお知らせの既読ドキュメントを取得
    // final readAnnouncementList =
    //     await ref.watch(fetchReadAnnouncementListProvider.future);

    // // AnnouncementListのisReadを更新
    // return AnnouncementList(
    //   announcements: announcementList.announcements.map(
    //     (announcement) {
    //       final isRead = readAnnouncementList.readAnnouncements.any(
    //         (readAnnouncement) =>
    //             readAnnouncement.announcementId == announcement.announcementId,
    //       );
    //       return announcement.copyWith(isRead: isRead);
    //     },
    //   ).toList(),

    // );
    return ref.read(announcementRepositoryProvider).fetchNotificationList();
  },
);
