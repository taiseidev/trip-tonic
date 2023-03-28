import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/models/chat_completion.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story_repository_impl.dart';

part 'create_story.g.dart';

@riverpod
Future<ChatCompletion> createStory(
  CreateStoryRef ref, {
  required String location,
  required String character,
}) async {
  final storyRepository = ref.read(storyRepositoryImplProvider);
  return storyRepository.createStory(
    location: '',
    character: '',
  );
}
