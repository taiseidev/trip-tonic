import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/helpers/shared_preference/shared_preference_helper.dart';
import 'package:trip_tonic/src/infrastructure/helpers/shared_preference/shared_preference_key.dart';
import 'package:trip_tonic/src/infrastructure/repositories/notification/notification_repository.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

enum AuthType {
  anonymously('匿名'),
  apple('apple.com'),
  google('google.com');

  const AuthType(this.type);
  final String type;
}

mixin AuthMixin {
  // ここに共通の処理を実装します。
  Future<void> commonAuthFunction({required Ref ref}) async {
    // 新規登録したユーザへのお知らせを作成
    await ref
        .read(notificationRepositoryProvider)
        .createNotificationForNewUser();
  }

  // 前回のログイン方法を保存する
  // 次回ログイン時にどの方法でログインしたかを表示する
  Future<void> storePreviousLoginMethod({required Ref ref}) async {
    final localDb = ref.read(sharedPreferencesRepositoryProvider);

    final loginMethod = ref
        .read(firebaseAuthProvider)
        .currentUser!
        .providerData
        .first
        .providerId;

    await localDb.save(
      SharedPreferencesKey.previousLoginMethod,
      _getAuthTypeName(loginMethod),
    );
  }

  String? _getAuthTypeName(String providerId) {
    for (final authType in AuthType.values) {
      if (authType.type == providerId) {
        return authType.toString().split('.').last;
      }
    }
    return null;
  }
}
