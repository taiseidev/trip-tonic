import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';

final firestoreDataSourceProvider = Provider<FirestoreDataSource>(
  (_) => FirestoreDataSource(FirebaseFirestore.instance),
);

class FirestoreDataSource {
  FirestoreDataSource(this._db);
  final FirebaseFirestore _db;

  Future<void> storeUserData({
    required String userName,
    required String mail,
  }) async {
    await _db.collection(users).doc().set(<String, dynamic>{
      name: userName,
      email: mail,
    });
  }
}
