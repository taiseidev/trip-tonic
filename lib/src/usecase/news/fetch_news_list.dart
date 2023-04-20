import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification_list.dart';
import 'package:trip_tonic/src/usecase/news/announcement/fetch_announcement_list.dart';
import 'package:trip_tonic/src/usecase/news/notification/fetch_notification_list.dart';

final fetchNewsListProvider = FutureProvider.autoDispose<CombinedData>(
  (ref) async {
    // お知らせ一覧を取得
    final announcementList =
        await ref.read(fetchAnnouncementListProvider.future);

    // 運営からのお知らせ一覧を取得
    final notificationList =
        await ref.read(fetchNotificationListProvider.future);

    return CombinedData(
      announcementList: announcementList,
      notificationList: notificationList,
    );
  },
);

class CombinedData {
  CombinedData({
    required this.announcementList,
    required this.notificationList,
  });

  final AnnouncementList announcementList;
  final NotificationList notificationList;
}
