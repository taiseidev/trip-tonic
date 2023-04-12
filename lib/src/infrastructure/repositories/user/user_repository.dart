import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/firebase/firebase_auth_repository.dart';

final userRepositoryProvider = Provider<UserRepository>(
  UserRepository.new,
);

class UserRepository {
  UserRepository(this.ref);
  final ProviderRef<UserRepository> ref;

  String? getUserId() =>
      ref.read(firebaseAuthRepositoryProvider).loggedInUserId;
}
