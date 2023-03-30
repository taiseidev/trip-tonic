import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';

final firestoreDataSourceProvider = Provider<FirestoreDataSource>(
  (_) => FirestoreDataSource(FirebaseFirestore.instance),
);

class FirestoreDataSource {
  FirestoreDataSource(this._db);
  final FirebaseFirestore _db;

  // ログイン時にユーザデータを保存
  Future<void> storeUserData({
    required String userName,
    required String mail,
  }) async {
    final docRef = _db.collection(users).doc();
    await docRef.set(<String, String>{
      userId: docRef.id,
      name: userName,
      email: mail,
    });
  }
}
