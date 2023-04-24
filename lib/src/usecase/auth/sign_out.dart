import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/repositories/auth/auth_repository_impl.dart';

/// サインアウトする
final signOutProvider = Provider<Future<void> Function()>(
  (ref) => () async => ref.read(authRepositoryImplProvider).signOut(),
);
