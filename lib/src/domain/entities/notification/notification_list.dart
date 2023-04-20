import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification.dart';

part 'notification_list.freezed.dart';

@freezed
class NotificationList with _$NotificationList {
  const factory NotificationList({
    // お知らせのリスト
    @Default(<Notification>[]) List<Notification> notifications,
  }) = _NotificationList;

  const NotificationList._();

  // 未読数を返却
  int get unreadCount =>
      notifications.where((notification) => !notification.isRead).length;
}
