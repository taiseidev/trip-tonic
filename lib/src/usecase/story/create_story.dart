import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository_provider.dart';

part 'create_story.g.dart';

@riverpod
Future<String> createStory(
  CreateStoryRef ref, {
  required String genre,
  required String keyWord,
  required List<String> characters,
}) async {
  late final String story;
  try {
    story = await ref.read(storyRepositoryProvider).createStory(
          genre: genre,
          keyWord: keyWord,
          characters: characters,
        );
  } on DioError catch (err) {
    throw Exception(err);
  }
  return story;
}
