import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/utils/constants.dart';
import 'package:trip_tonic/src/infrastructure/utils/providers.dart';

part 'genre_data_source.g.dart';

@riverpod
GenreDataSource genreDataSource(GenreDataSourceRef ref) =>
    GenreDataSource(ref.read(firestoreProvider));

class GenreDataSource {
  GenreDataSource(this._db);
  final FirebaseFirestore _db;

  Future<QuerySnapshot<Map<String, dynamic>>> fetchGenres() async {
    final docRef = _db.collection(genres);
    return docRef.get();
  }
}
