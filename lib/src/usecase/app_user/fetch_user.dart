import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/app_user.dart';
import 'package:trip_tonic/src/infrastructure/repositories/app_user/user_repository.dart';

part 'fetch_user.g.dart';

/// ユーザの通知設定を取得する
@riverpod
Future<AppUser> fetchUser(FetchUserRef ref) async {
  final appUser = await ref.read(appUserRepositoryProvider).fetchUser();
  return appUser;
}
