import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository_provider.dart';

part 'fetch_genres.g.dart';

// ジャンル一覧を取得する
@riverpod
Future<List<Genre>> fetchGenres(FetchGenresRef ref) async {
  final genres = await ref.read(storyRepositoryImplProvider).fetchGenres();
  return genres;
}
