import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userProvider = StreamProvider<User?>((ref) async* {
  final auth = FirebaseAuth.instance;
  final userStream = auth.authStateChanges();
  await for (final user in userStream) {
    yield user;
  }
});
