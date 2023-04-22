import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/main.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

part 'notification_data_source.g.dart';

@riverpod
NotificationDataSource notificationDataSource(NotificationDataSourceRef ref) =>
    NotificationDataSource(
      db: ref.read(firestoreProvider),
      auth: ref.read(firebaseAuthProvider),
      functions: ref.read(firebaseFunctionsProvider),
      ref: ref,
      constants: ref.read(constantsProvider),
    );

class NotificationDataSource {
  NotificationDataSource({
    required this.db,
    required this.auth,
    required this.functions,
    required this.ref,
    required this.constants,
  });

  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final FirebaseFunctions functions;
  final NotificationDataSourceRef ref;
  final Constants constants;

  // お知らせ一覧を取得
  Future<QuerySnapshot<Map<String, dynamic>>> fetchNotificationList() async {
    final userId = auth.currentUser?.uid;
    // お知らせ一覧を作成日の降順で取得
    final collectionRef = db
        .collection(
          '${constants.versions}/$version/${constants.users}/$userId/${constants.notifications}',
        )
        .orderBy('createdAt', descending: true);
    return collectionRef.get();
  }

  // お知らせを既読にする
  Future<void> updateNotificationReadState({
    required String notificationId,
  }) async {
    await functions
        .httpsCallable(constants.updateNotificationReadState)
        .call<void>({
      constants.userId: auth.currentUser?.uid,
      constants.notificationId: notificationId,
      constants.version: version, // --dart-defineで定義したversionを渡す
    });
  }
}
