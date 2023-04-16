import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';
import 'package:trip_tonic/src/infrastructure/repositories/genre/genre_repository.dart';

part 'fetch_genres.g.dart';

@riverpod
Future<List<Genre>>? fetchGenres(FetchGenresRef ref) async =>
    ref.read(genreRepositoryProvider).fetchGenres();
