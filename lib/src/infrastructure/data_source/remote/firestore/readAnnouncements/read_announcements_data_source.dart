import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/main.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

part 'read_announcements_data_source.g.dart';

@riverpod
ReadAnnouncementsDataSource readAnnouncementsDataSource(
  ReadAnnouncementsDataSourceRef ref,
) =>
    ReadAnnouncementsDataSource(
      db: ref.read(firestoreProvider),
      auth: ref.read(firebaseAuthProvider),
      ref: ref,
      constants: ref.read(constantsProvider),
    );

class ReadAnnouncementsDataSource {
  ReadAnnouncementsDataSource({
    required this.db,
    required this.auth,
    required this.ref,
    required this.constants,
  });

  final FirebaseFirestore db;
  final FirebaseAuth auth;
  final ReadAnnouncementsDataSourceRef ref;
  final Constants constants;

  // （運営からの）お知らせ一覧を取得
  Future<QuerySnapshot<Map<String, dynamic>>>
      fetchReadAnnouncementList() async {
    final userId = auth.currentUser?.uid;
    final collectionRef = db.collection(
      '${constants.versions}/$version/${constants.users}/$userId/${constants.readAnnouncements}',
    );
    return collectionRef.get();
  }
}
