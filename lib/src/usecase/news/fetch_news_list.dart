import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/domain/entities/news/news.dart';
import 'package:trip_tonic/src/usecase/news/announcement/fetch_announcement_list.dart';
import 'package:trip_tonic/src/usecase/news/announcement/fetch_read_announcement.dart';
import 'package:trip_tonic/src/usecase/news/notification/fetch_notification_list.dart';

// TODO: リファクタリング
final fetchNewsListProvider = FutureProvider.autoDispose<News>(
  (ref) async {
    // 運営からのお知らせ一覧を取得
    final announcementList =
        await ref.watch(fetchAnnouncementListProvider.future);

    // お知らせ一覧を取得
    final notificationList =
        await ref.watch(fetchNotificationListProvider.future);

    // 運営からのお知らせの既読ドキュメントを取得
    final readAnnouncementList =
        await ref.watch(fetchReadAnnouncementListProvider.future);

    // AnnouncementListのisReadを更新
    final announcements = AnnouncementList(
      announcements: announcementList.announcements.map(
        (announcement) {
          final isRead = readAnnouncementList.readAnnouncements.any(
            (readAnnouncement) =>
                readAnnouncement.announcementId == announcement.announcementId,
          );
          return announcement.copyWith(isRead: isRead);
        },
      ).toList(),
    );

    return News(
      announcementList: announcements,
      notificationList: notificationList,
    );
  },
);
