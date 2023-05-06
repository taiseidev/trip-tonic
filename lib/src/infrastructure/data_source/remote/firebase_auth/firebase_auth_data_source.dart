import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

final authDataSourceProvider = Provider<AuthDataSource>(
  (ref) => AuthDataSource(ref, FirebaseAuth.instance),
);

class AuthDataSource {
  AuthDataSource(this.ref, this._auth);
  final ProviderRef<AuthDataSource> ref;
  final FirebaseAuth _auth;

  // FirebaseAuthにSNS認証
  Future<UserCredential> _createUser(OAuthCredential oauthCredential) async {
    try {
      return await _auth.signInWithCredential(oauthCredential);
    } on Exception {
      rethrow;
    }
  }

  // FirebaseAuthに匿名認証
  Future<UserCredential> singInAnonymously() async {
    try {
      return await _auth.signInAnonymously();
    } on FirebaseException {
      rethrow;
    }
  }

  Future<List<dynamic>?> signInGoogle() async {
    final googleSignIn = GoogleSignIn(
      clientId:
          '147274694288-tpq7fv2trabomfre79c6tcp7uu4p4cls.apps.googleusercontent.com',
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
    );

    try {
      final account = await googleSignIn.signIn();

      if (account == null) {
        throw Exception('sign_in_canceled');
      }

      final googleAuth = await account.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _createUser(credential);
      return [
        userCredential,
        account,
      ];
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        // エラーダイアログを表示する
      } else if (e.code == 'invalid-credential') {
        // handle the error here
      }
    } on Exception {
      rethrow;
    }
    return null;
  }

  // TODO: Dart3のRecord型に修正
  Future<List<dynamic>?> signInApple() async {
    try {
      // AuthorizationCredentialAppleIDのインスタンスを取得
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // OAthCredentialのインスタンスを作成
      final oauthProvider = OAuthProvider('apple.com');

      final credential = oauthProvider.credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final userCredential = await _createUser(credential);

      return [
        userCredential,
        appleCredential,
      ];
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        // エラーダイアログを表示する
      } else if (e.code == 'invalid-credential') {
        // handle the error here
      }
    } on Exception {
      rethrow;
    }
    return null;
  }
}
