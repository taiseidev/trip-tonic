
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';

/// Appleでサインインする
final signInAppleUseCaseProvider =
    Provider<SingInAppleUseCase>(SingInAppleUseCase.new);

class SingInAppleUseCase {
  SingInAppleUseCase(this.ref);
  final ProviderRef<SingInAppleUseCase> ref;

  Future<void> call() async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(
        () async => ref.read(authRepositoryImplProvider).singInApple(),
      );
  }
}
