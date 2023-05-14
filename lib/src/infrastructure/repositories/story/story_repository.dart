import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/domain/entities/story/story.dart';
import 'package:trip_tonic/src/infrastructure/repositories/app_user/user_repository.dart';

class StoryRepository {
  StoryRepository(this.ref);

  final ProviderRef<StoryRepository> ref;

  // ChatGPTのAPIを叩いて小説を生成する
  Future<Story> createStory({
    required String genre,
    required String keyWord,
    required List<String> characters,
  }) async {
    // 登場人物の一覧をJSONに変換する
    // final charactersJson = jsonEncode(characters);
    // final result = await ref.read(storyDataSourceProvider).createStory(
    //       genre,
    //       keyWord,
    //       charactersJson,
    //     );

    final userId = ref.read(appUserRepositoryProvider).getUserId();

    if (userId == null) {
      throw Exception('userId is null');
    }

    // TODO: utilsかなんかに移す予定
    final now = DateTime.now();

    return Story(
      userId: 'testId',
      title: 'title',
      content: 'content',
      createdAt: now,
    );
  }
}
