import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:trip_tonic/src/usecase/auth/auth_mixin.dart';

/// Googleでサインインする
final signInGoogleUseCaseProvider =
    Provider<SingInGoogleUseCase>(SingInGoogleUseCase.new);

class SingInGoogleUseCase with AuthMixin {
  SingInGoogleUseCase(this.ref);
  final ProviderRef<SingInGoogleUseCase> ref;

  Future<void> call() async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(
        () async {
          final authResult =
              await ref.read(authRepositoryImplProvider).singInGoogle();

          // 新規会員登録の場合は発火
          if (authResult != null && authResult.additionalUserInfo!.isNewUser) {
            await commonAuthFunction(ref: ref); // mixin
          }
        },
      );
  }
}
