import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/app_user.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/app_user/app_user_data_source.dart';
import 'package:trip_tonic/src/infrastructure/repositories/firebase/firebase_auth_repository.dart';

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

  String? getUserId() =>
      ref.read(firebaseAuthRepositoryProvider).loggedInUserId;
}
