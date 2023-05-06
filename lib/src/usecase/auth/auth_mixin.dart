import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/repositories/notification/notification_repository.dart';

mixin AuthMixin {
  Future<void> commonAuthFunction({required Ref ref}) async {
    // ここに共通の処理を実装します。
    await ref
        .read(notificationRepositoryProvider)
        .createNotificationForNewUser();
  }
}
