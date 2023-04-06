import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/api/story_data_source.dart';

class StoryRepository {
  StoryRepository(this.ref);

  final ProviderRef<StoryRepository> ref;

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
