import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification.dart';

part 'notification_list.freezed.dart';
part 'notification_list.g.dart';

@freezed
class NotificationList with _$NotificationList {
  const factory NotificationList({
    // お知らせのリスト
    @Default(<Notification>[]) List<Notification> notifications,
  }) = _NotificationList;

  const NotificationList._();

  factory NotificationList.fromJson(Map<String, dynamic> json) =>
      _$NotificationListFromJson(json);
}
