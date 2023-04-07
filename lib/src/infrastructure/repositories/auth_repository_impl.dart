import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/repositories/auth_repository.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firebase_auth/firebase_auth_data_source.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/auth/auth_data_source.dart';

final authRepositoryImplProvider = Provider<AuthRepositoryImpl>(
  AuthRepositoryImpl.new,
);

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.ref);
  final ProviderRef<AuthRepositoryImpl> ref;

  @override
  Future<void> singInAnonymously() async {
    await ref.read(authDataSourceProvider).singInAnonymously();
    await ref.read(firestoreDataSourceProvider).storeUserData(
          userName: '匿名認証',
          mail: '匿名認証',
        );
  }

  @override
  Future<void> singInGoogle() async {
    final credential = await ref.read(authDataSourceProvider).signInGoogle();

    if (credential == null) {
      // nullの場合の処理を追加する
      return;
    }

    await ref.read(firestoreDataSourceProvider).storeUserData(
          userName: credential.displayName ?? '登録なし',
          mail: credential.email,
        );
  }

  @override
  Future<void> singInApple() async {
    final credential = await ref.read(authDataSourceProvider).signInApple();

    if (credential == null) {
      // nullの場合の処理を追加する
      return;
    }

    await ref.read(firestoreDataSourceProvider).storeUserData(
          userName: credential.givenName ?? '登録なし',
          mail: credential.email ?? '登録なし',
        );
  }
}
