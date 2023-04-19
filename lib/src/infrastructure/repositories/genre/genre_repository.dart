import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/genre/genre_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/story/genre_dto.dart';

part 'genre_repository.g.dart';

@riverpod
GenreRepository genreRepository(GenreRepositoryRef ref) => GenreRepository(ref);

class GenreRepository {
  GenreRepository(this.ref);

  final GenreRepositoryRef ref;

  // 小説作成画面で使用するジャンル一覧を取得する
  Future<List<Genre>> fetchGenres() async {
    final snapshot = await ref.read(genreDataSourceProvider).fetchGenres();
    final docs = snapshot.docs.map(GenreDTO.fromFirestore).toList();
    return docs.map((doc) => doc.toDomain(doc)).toList();
  }
}
