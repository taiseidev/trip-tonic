import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:trip_tonic/src/usecase/auth/auth_mixin.dart';

/// 匿名でサインインする
final signInAnonymouslyUseCaseProvider =
    Provider<SingInAnonymouslyUseCase>(SingInAnonymouslyUseCase.new);

class SingInAnonymouslyUseCase with AuthMixin {
  SingInAnonymouslyUseCase(this.ref);
  final ProviderRef<SingInAnonymouslyUseCase> ref;

  Future<void> call() async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        // ローディングを表示させるため1秒間delay
        await Future<void>.delayed(const Duration(seconds: 1));
        final authResult =
            await ref.read(authRepositoryImplProvider).singInAnonymously();

        await storePreviousLoginMethod(ref: ref);

        // 新規会員登録の場合は発火
        if (authResult.additionalUserInfo!.isNewUser) {
          await commonAuthFunction(ref: ref); // mixin
        }
      });
  }
}
