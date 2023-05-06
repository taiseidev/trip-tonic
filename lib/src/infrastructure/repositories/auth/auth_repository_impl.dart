import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firebase_auth/firebase_auth_data_source.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/auth/auth_data_source.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

final authRepositoryImplProvider = Provider<AuthRepositoryImpl>(
  AuthRepositoryImpl.new,
);

class AuthRepositoryImpl {
  AuthRepositoryImpl(this.ref);
  final ProviderRef<AuthRepositoryImpl> ref;

  Future<UserCredential> singInAnonymously() async {
    final authResult =
        await ref.read(authDataSourceProvider).singInAnonymously();
    await ref.read(firestoreDataSourceProvider).storeUserData(
          userName: '匿名認証',
          mail: '匿名認証',
        );
    return authResult;
  }

  Future<UserCredential?> singInGoogle() async {
    final credential = await ref.read(authDataSourceProvider).signInGoogle();

    if (credential == null) {
      // nullの場合の処理を追加する
      return null;
    }

    final userCredential = credential[0] as UserCredential;
    final googleCredential = credential[1] as GoogleSignInAccount;

    await ref.read(firestoreDataSourceProvider).storeUserData(
          userName: googleCredential.displayName ?? '登録なし',
          mail: googleCredential.email,
        );

    return userCredential;
  }

  Future<UserCredential?> singInApple() async {
    final credential = await ref.read(authDataSourceProvider).signInApple();

    if (credential == null && credential!.isEmpty) {
      // nullの場合の処理を追加する
      return null;
    }

    final userCredential = credential[0] as UserCredential;
    final appleCredential = credential[1] as AuthorizationCredentialAppleID;

    await ref.read(firestoreDataSourceProvider).storeUserData(
          userName: appleCredential.givenName ?? '登録なし',
          mail: appleCredential.email ?? '登録なし',
        );

    return userCredential;
  }

  Future<void> signOut() async {
    await ref.read(firebaseAuthProvider).signOut();
  }
}
