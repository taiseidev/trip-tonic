import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/announcement/announcement_list.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification_list.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const factory News({
    // お知らせ一覧
    required NotificationList notificationList,

    // 運営からのお知らせ一覧
    required AnnouncementList announcementList,
  }) = _News;

  const News._();

  // お知らせを既読にする
  News readNotification({required String notificationId}) {
    return copyWith(
      notificationList: NotificationList(
        notifications: [
          for (var element in notificationList.notifications)
            element.notificationId == notificationId
                ? element.copyWith(isRead: true)
                : element,
        ],
      ),
    );
  }

  // 運営からのお知らせを既読にする
  News readAnnouncement({required String announcementId}) {
    return copyWith(
      announcementList: AnnouncementList(
        announcements: [
          for (var element in announcementList.announcements)
            element.announcementId == announcementId
                ? element.copyWith(isRead: true)
                : element,
        ],
      ),
    );
  }
}
