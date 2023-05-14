import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/main.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';
import 'package:trip_tonic/src/presentation/ui/pages/news/news_page.dart';

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

  // お知らせを通知するかどうかの状態を更新
  Future<void> updateIsPushNewsState({
    required NewsType type,
    required bool state,
  }) async {
    final docRef = db.collection(collectionPath).doc(auth.currentUser!.uid);
    if (type == NewsType.news) {
      await docRef.update(<String, bool>{
        constants.pushAnnouncementEnabled: state,
      });
    }
    if (type == NewsType.notice) {
      await docRef.update(<String, bool>{
        constants.pushNotificationEnabled: state,
      });
    }
  }
}
