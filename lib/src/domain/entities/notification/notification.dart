import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/timestamp_converter.dart';

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
    @TimestampConverter() required DateTime createdAt,
  }) = _Notification;

  const Notification._();

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
