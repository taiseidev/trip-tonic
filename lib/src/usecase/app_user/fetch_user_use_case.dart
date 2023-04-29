import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/app_user.dart';
import 'package:trip_tonic/src/infrastructure/repositories/app_user/user_repository.dart';

/// ユーザの通知設定を取得する

final fetchUserUseCaseProvider =
    Provider<FetchUserUseCase>(FetchUserUseCase.new);

class FetchUserUseCase {
  FetchUserUseCase(this._ref);
  final ProviderRef<FetchUserUseCase> _ref;

  Future<AppUser> call() async =>
      _ref.read(appUserRepositoryProvider).fetchUser();
}
