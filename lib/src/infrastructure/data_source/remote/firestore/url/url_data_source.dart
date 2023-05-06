import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

final urlDataSourceProvider = Provider<UrlDataSource>(
  (ref) => UrlDataSource(
    ref: ref,
    db: ref.read(firestoreProvider),
    constants: ref.read(constantsProvider),
  ),
);

class UrlDataSource {
  UrlDataSource({
    required this.db,
    required this.ref,
    required this.constants,
  });

  final FirebaseFirestore db;
  final ProviderRef<UrlDataSource> ref;
  final Constants constants;

  // urlsコレクション内の特定のドキュメントを取得する
  Future<QuerySnapshot<Map<String, dynamic>>> fetchUrl({
    required UrlType type,
  }) async {
    final collectionRef = db.collection(constants.urls).where(
          constants.type,
          isEqualTo: type.name,
        );
    return collectionRef.get();
  }
}

enum UrlType {
  contact,
  privacyPolicy,
  termsOfService,
}
