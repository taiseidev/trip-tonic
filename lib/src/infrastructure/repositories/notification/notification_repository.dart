import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/notification/notification_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/notification/notification_dto.dart';

part 'notification_repository.g.dart';

@riverpod
NotificationRepository notificationRepository(NotificationRepositoryRef ref) =>
    NotificationRepository(ref);

class NotificationRepository {
  NotificationRepository(this.ref);

  final NotificationRepositoryRef ref;

  Future<List<Notification>> fetchNotificationList() async {
    // Firestoreからお知らせ一覧を取得する
    final snapshot =
        await ref.read(notificationDataSourceProvider).fetchNotificationList();

    // Firestoreから取得したデータをドメインモデルに変換する
    final notifications = snapshot.docs
        .map(
          (doc) => NotificationDto.fromFirestore(doc).toDomain(),
        )
        .toList();
    return notifications;
  }
}
