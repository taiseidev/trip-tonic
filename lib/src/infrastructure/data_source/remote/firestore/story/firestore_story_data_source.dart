import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

final firestoreStoryDataSourceProvider = Provider<FirestoreStoryDataSource>(
  (ref) => FirestoreStoryDataSource(
    db: ref.read(firestoreProvider),
    constants: ref.read(constantsProvider),
  ),
);

class FirestoreStoryDataSource {
  FirestoreStoryDataSource({
    required this.db,
    required this.constants,
  });

  final FirebaseFirestore db;
  final Constants constants;

  Future<QuerySnapshot<Map<String, dynamic>>> fetchGenres() async {
    final docRef = db.collection(constants.genres);
    return docRef.get();
  }

  // 新規会員登録時にユーザデータを保存
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
