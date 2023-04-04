import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_story.g.dart';

@riverpod
Future<String> createStory(
  CreateStoryRef ref, {
  required String genre,
  required String keyWord,
  required String character,
}) async {
  // final result = await ref.read(storyRepositoryImplProvider).createStory(
  //       genre: genre,
  //       keyWord: keyWord,
  //       character: character,
  //     );
  // return result;
  await Future<void>.delayed(const Duration(seconds: 15));
  return '完了しました';
}
