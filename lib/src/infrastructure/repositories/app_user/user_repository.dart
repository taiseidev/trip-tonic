import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/app_user.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/app_user/app_user_data_source.dart';
import 'package:trip_tonic/src/infrastructure/repositories/firebase/firebase_auth_repository.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_page.dart';

final appUserRepositoryProvider = Provider<AppUserRepository>(
  AppUserRepository.new,
);

class AppUserRepository {
  AppUserRepository(this.ref);
  final ProviderRef<AppUserRepository> ref;

  Future<AppUser> fetchUser() async {
    final appUser = await ref.read(appUserDataSourceProvider).fetchUser();
    final data = appUser.data();

    return AppUser.fromJson(data!);
  }

  // お知らせを通知するかどうかの状態を更新
  Future<void> updateIsPushNewsState({
    required NewsType type,
    required bool state,
  }) async =>
      ref
          .read(appUserDataSourceProvider)
          .updateIsPushNewsState(type: type, state: state);

  String? getUserId() =>
      ref.read(firebaseAuthRepositoryProvider).loggedInUserId;
}
