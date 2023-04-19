import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification.dart';
import 'package:trip_tonic/src/infrastructure/utils/timestamp_converter.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
class NotificationDto with _$NotificationDto {
  const factory NotificationDto({
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
  }) = _NotificationDto;
  const NotificationDto._();

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  factory NotificationDto.fromFirestore(DocumentSnapshot doc) =>
      NotificationDto.fromJson(doc.data()! as Map<String, dynamic>);

  Notification toDomain() => Notification(
        notificationId: notificationId,
        title: title,
        content: content,
        isRead: isRead,
        createdAt: createdAt,
      );
}
