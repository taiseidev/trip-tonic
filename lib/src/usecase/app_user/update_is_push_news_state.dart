import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/app_user/user_repository.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_page.dart';

/// 匿名でサインインする
final updateIsPushNewsStateUseCaseProvider =
    Provider<UpdateIsPushNewsStateUseCase>(UpdateIsPushNewsStateUseCase.new);

class UpdateIsPushNewsStateUseCase {
  UpdateIsPushNewsStateUseCase(this.ref);
  final ProviderRef<UpdateIsPushNewsStateUseCase> ref;

  Future<void> call({required NewsType type, required bool state}) async {
    ref.read(loadingStateProvider.notifier)
      ..state = const AsyncValue.loading()
      ..state = await AsyncValue.guard(() async {
        await Future<void>.delayed(const Duration(seconds: 1));
        await ref.read(appUserRepositoryProvider).updateIsPushNewsState(
              type: type,
              state: state,
            );
      });
  }
}
