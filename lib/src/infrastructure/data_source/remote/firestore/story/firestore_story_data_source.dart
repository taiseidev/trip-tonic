import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';

final firestoreStoryDataSourceProvider = Provider<FirestoreStoryDataSource>(
  (_) => FirestoreStoryDataSource(FirebaseFirestore.instance),
);

class FirestoreStoryDataSource {
  FirestoreStoryDataSource(this._db);
  final FirebaseFirestore _db;

  Future<QuerySnapshot<Map<String, dynamic>>> fetchGenres() async {
    final docRef = _db.collection(genres);
    return docRef.get();
  }

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
