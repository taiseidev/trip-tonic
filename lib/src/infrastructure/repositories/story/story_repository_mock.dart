import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/story.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository.dart';

class StoryRepositoryMock extends StoryRepository {
  StoryRepositoryMock(
    this.ref,
  ) : super(ref);

  @override
  final ProviderRef<StoryRepository> ref;

  @override
  Future<Story> createStory({
    required String genre,
    required String keyWord,
    required List<String> characters,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return Story(
      userId: '',
      title: '',
      content: '',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
