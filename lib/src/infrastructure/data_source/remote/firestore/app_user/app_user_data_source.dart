import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/main.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

part 'app_user_data_source.g.dart';

@riverpod
AppUserDataSource appUserDataSource(AppUserDataSourceRef ref) =>
    AppUserDataSource(
      db: ref.read(firestoreProvider),
      auth: ref.read(firebaseAuthProvider),
      ref: ref,
      constants: ref.read(constantsProvider),
    );

class AppUserDataSource {
  AppUserDataSource({
    required this.db,
    required this.auth,
    required this.ref,
    required this.constants,
  });

  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final AppUserDataSourceRef ref;
  final Constants constants;

  late final collectionPath =
      '${constants.versions}/$version/${constants.users}';

  // ユーザ情報を取得する。
  Future<DocumentSnapshot<Map<String, dynamic>>> fetchUser() async {
    final docRef = db.collection(collectionPath).doc(auth.currentUser!.uid);
    return docRef.get();
  }
}
