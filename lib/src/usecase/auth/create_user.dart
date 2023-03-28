import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth_repository_impl.dart';

final createUserProvider = Provider<CreateUser>(CreateUser.new);

class CreateUser {
  CreateUser(this.ref);
  final ProviderRef<CreateUser> ref;

  Future<void> call() async {
    final notifier = ref.read(loginStateProvider.notifier);

    // ログイン結果をローディング中にする
    notifier.state = const AsyncValue.loading();

    // ログイン処理を実行する
    notifier.state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(seconds: 5));
      await ref.read(authRepositoryImplProvider).createUser();
    });
  }
}
