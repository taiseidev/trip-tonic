import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';

/// Googleでサインインする
final signInGoogleProvider = Provider<SingInGoogle>(SingInGoogle.new);

class SingInGoogle {
  SingInGoogle(this.ref);
  final ProviderRef<SingInGoogle> ref;

  Future<void> call() async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(
        () async => ref.read(authRepositoryImplProvider).singInGoogle(),
      );
  }
}
