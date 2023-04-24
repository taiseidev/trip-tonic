import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';

/// 匿名でサインインする
final signInAnonymouslyProvider =
    Provider<SingInAnonymously>(SingInAnonymously.new);

class SingInAnonymously {
  SingInAnonymously(this.ref);
  final ProviderRef<SingInAnonymously> ref;

  Future<void> call() async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        // ローディングを表示させるため1秒間delay
        await Future<void>.delayed(const Duration(seconds: 1));
        await ref.read(authRepositoryImplProvider).singInAnonymously();
      });
  }
}
