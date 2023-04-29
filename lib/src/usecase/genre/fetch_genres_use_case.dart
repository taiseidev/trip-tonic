
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';
import 'package:trip_tonic/src/infrastructure/repositories/genre/genre_repository.dart';

/// ジャンルの一覧を取得する
final fetchGenresUsecaseProvider =
    Provider<FetchGenresUseCase>(FetchGenresUseCase.new);

class FetchGenresUseCase {
  FetchGenresUseCase(this._ref);
  final ProviderRef<FetchGenresUseCase> _ref;

  Future<List<Genre>> call() async =>
      _ref.read(genreRepositoryProvider).fetchGenres();
}
