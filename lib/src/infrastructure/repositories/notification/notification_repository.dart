import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification_list.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/news/notification/notification_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/notification/notification_dto.dart';

part 'notification_repository.g.dart';

@riverpod
NotificationRepository notificationRepository(NotificationRepositoryRef ref) =>
    NotificationRepository(ref);

class NotificationRepository {
  NotificationRepository(this.ref);

  final NotificationRepositoryRef ref;

  // 新規ユーザ用のお知らせを作成
  Future<void> createNotificationForNewUser() async =>
      ref.read(notificationDataSourceProvider).createNotificationForNewUser();

  Future<NotificationList> fetchNotificationList() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    // Firestoreからお知らせ一覧を取得する
    final snapshot =
        await ref.read(notificationDataSourceProvider).fetchNotificationList();

    // Firestoreから取得したデータをドメインモデルに変換する
    final notifications = snapshot.docs
        .map(
          (doc) => NotificationDto.fromFirestore(doc).toDomain(),
        )
        .toList();

    // NotificationListに変換して返却
    return NotificationList(notifications: notifications);
  }

  Future<void> updateNotificationReadState({
    required String notificationId,
  }) async =>
      ref.read(notificationDataSourceProvider).updateNotificationReadState(
            notificationId: notificationId,
          );
}
