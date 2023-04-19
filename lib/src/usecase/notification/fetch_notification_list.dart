import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/notification/notification.dart';
import 'package:trip_tonic/src/infrastructure/repositories/notification/notification_repository.dart';

// お知らせの一覧を取得
final fetchNotificationListProvider = FutureProvider<List<Notification>>(
  (ref) async =>
      ref.read(notificationRepositoryProvider).fetchNotificationList(),
);
