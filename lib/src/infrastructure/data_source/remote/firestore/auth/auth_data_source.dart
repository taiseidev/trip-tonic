import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/main.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

final firestoreDataSourceProvider = Provider<FirestoreDataSource>(
  (ref) => FirestoreDataSource(
    db: ref.read(firestoreProvider),
    auth: ref.read(firebaseAuthProvider),
    constants: ref.read(constantsProvider),
  ),
);

class FirestoreDataSource {
  FirestoreDataSource({
    required this.db,
    required this.auth,
    required this.constants,
  });
  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final Constants constants;

  // ログイン時にユーザデータを保存
  Future<void> storeUserData({
    required String userName,
    required String mail,
  }) async {
    final userId = auth.currentUser!.uid;
    final collectionRef =
        db.collection('${constants.versions}/$version/${constants.users}');
    await collectionRef.doc(userId).set(<String, dynamic>{
      constants.userId: userId,
      constants.name: userName,
      constants.email: mail,
      constants.pushNotificationEnabled: true,
      constants.pushAnnouncementEnabled: true,
    });
  }
}
