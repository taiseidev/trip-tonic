import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    // お知らせのID
    required String notificationId,

    // お知らせのタイトル
    required String title,

    // お知らせの内容
    required String content,

    // 既読状態
    required bool isRead,

    // 作成日
    required DateTime createdAt,

    // 更新日
    DateTime? updatedAt,
  }) = _Notification;

  const Notification._();

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
