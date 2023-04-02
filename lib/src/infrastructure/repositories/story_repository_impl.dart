import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/repositories/story_repository.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/api/story_data_source.dart';

class StoryRepositoryImpl extends StoryRepository {
  StoryRepositoryImpl(this.ref);

  final ProviderRef<StoryRepository> ref;

  @override
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

final storyRepositoryImplProvider =
    Provider<StoryRepositoryImpl>(StoryRepositoryImpl.new);
