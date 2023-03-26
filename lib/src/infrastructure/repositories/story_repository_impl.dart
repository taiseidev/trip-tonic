import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/repositories/story_repository.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/story_data_source.dart';
import 'package:trip_tonic/src/infrastructure/models/chat_completion.dart';

class StoryRepositoryImpl extends StoryRepository {
  StoryRepositoryImpl(this.ref);

  final ProviderRef<StoryRepository> ref;

  @override
  Future<ChatCompletion> createStory({
    required String location,
    required String character,
  }) async {
    return ref.read(storyDataSourceProvider).createStory(
          location,
          character,
        );
  }
}

final storyRepositoryImplProvider =
    Provider<StoryRepositoryImpl>(StoryRepositoryImpl.new);
