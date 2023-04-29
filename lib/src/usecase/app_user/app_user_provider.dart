import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/app_user.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';
import 'package:trip_tonic/src/usecase/app_user/fetch_user_use_case.dart';

part 'app_user_provider.g.dart';

// TODO: 置き場所を変更
@riverpod
class AppUserNotifier extends AutoDisposeAsyncNotifier<AppUser> {
  AppUserNotifier();

  // アプリ起動時にユーザ情報をセットする
  @override
  Future<AppUser> build() async => ref.read(fetchUserUseCaseProvider)();
}

final userProvider = StreamProvider<User?>((ref) async* {
  final auth = ref.watch(firebaseAuthProvider);
  final userStream = auth.authStateChanges();
  await for (final user in userStream) {
    yield user;
  }
});
