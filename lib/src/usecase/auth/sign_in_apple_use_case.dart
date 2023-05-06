import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:trip_tonic/src/usecase/auth/auth_mixin.dart';

/// Appleでサインインする
final signInAppleUseCaseProvider =
    Provider<SingInAppleUseCase>(SingInAppleUseCase.new);

class SingInAppleUseCase with AuthMixin {
  SingInAppleUseCase(this.ref);
  final ProviderRef<SingInAppleUseCase> ref;

  Future<void> call() async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(
        () async {
          final authResult =
              await ref.read(authRepositoryImplProvider).singInApple();

          await storePreviousLoginMethod(ref: ref);

          // 新規会員登録の場合は発火
          if (authResult != null && authResult.additionalUserInfo!.isNewUser) {
            await commonAuthFunction(ref: ref); // mixin
          }
        },
      );
  }
}
