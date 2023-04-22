import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/notification/notification_repository.dart';

final updateNotificationReadStateProvider =
    Provider.family<Future<void> Function(), String>(
  (ref, notificationId) => () async => ref
      .read(notificationRepositoryProvider)
      .updateNotificationReadState(notificationId: notificationId),
);
