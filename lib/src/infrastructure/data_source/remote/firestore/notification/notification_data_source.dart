import 'package:cloud_firestore/cloud_firestore.dart';
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
      ref: ref,
      constants: ref.read(constantsProvider),
    );

class NotificationDataSource {
  NotificationDataSource({
    required this.db,
    required this.auth,
    required this.ref,
    required this.constants,
  });

  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final NotificationDataSourceRef ref;
  final Constants constants;

  // お知らせ一覧を取得
  Future<QuerySnapshot<Map<String, dynamic>>> fetchNotificationList() async {
    final userId = auth.currentUser?.uid;
    final collectionRef = db.collection(
      '${constants.versions}/$version/${constants.users}/$userId/${constants.notifications}',
    );
    return collectionRef.get();
  }
}
