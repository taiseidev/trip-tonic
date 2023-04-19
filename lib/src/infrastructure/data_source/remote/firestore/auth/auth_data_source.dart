import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

final firestoreDataSourceProvider = Provider<FirestoreDataSource>(
  (ref) => FirestoreDataSource(
    db: ref.read(firestoreProvider),
    constants: ref.read(constantsProvider),
  ),
);

class FirestoreDataSource {
  FirestoreDataSource({
    required this.db,
    required this.constants,
  });
  final FirebaseFirestore db;
  final Constants constants;

  // ログイン時にユーザデータを保存
  Future<void> storeUserData({
    required String userName,
    required String mail,
  }) async {
    final docRef = db.collection(constants.users).doc();
    await docRef.set(<String, String>{
      constants.userId: docRef.id,
      constants.name: userName,
      constants.email: mail,
    });
  }
}
