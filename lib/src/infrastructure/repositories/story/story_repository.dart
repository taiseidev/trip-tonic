
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/api/story_data_source.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/firestore/story/firestore_story_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/story/genre_dto.dart';

class StoryRepository {
  StoryRepository(this.ref);

  final ProviderRef<StoryRepository> ref;

  // 小説作成画面で使用するジャンル一覧を取得する
  Future<List<Genre>> fetchGenres() async {
    final snapshot =
        await ref.read(firestoreStoryDataSourceProvider).fetchGenres();
    final docs = snapshot.docs.map(GenreDTO.fromFirestore).toList();
    return docs.map((doc) => doc.toDomain(doc)).toList();
  }

  // ChatGPTのAPIを叩いて小説を生成する
  Future<String> createStory({
    required String genre,
    required String keyWord,
    required String character,
  }) async {
    return ref.read(storyDataSourceProvider).createStory(
          genre,
          keyWord,
          character,
        );
  }
}
