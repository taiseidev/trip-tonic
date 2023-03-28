import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final authDataSourceProvider = Provider<AuthDataSource>(
  (ref) => AuthDataSource(FirebaseAuth.instance),
);

class AuthDataSource {
  AuthDataSource(this._auth);
  final FirebaseAuth _auth;

  Future<void> createUser() async {
    await _auth.signInAnonymously();
  }
}
