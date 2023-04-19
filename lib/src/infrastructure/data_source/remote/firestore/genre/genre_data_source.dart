import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

part 'genre_data_source.g.dart';

@riverpod
GenreDataSource genreDataSource(GenreDataSourceRef ref) => GenreDataSource(
      db: ref.read(firestoreProvider),
      constants: ref.read(constantsProvider),
    );

class GenreDataSource {
  GenreDataSource({
    required this.db,
    required this.constants,
  });
  final FirebaseFirestore db;
  final Constants constants;

  Future<QuerySnapshot<Map<String, dynamic>>> fetchGenres() async {
    final docRef = db.collection(constants.genres);
    return docRef.get();
  }
}
