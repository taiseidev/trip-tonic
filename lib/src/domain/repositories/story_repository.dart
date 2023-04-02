// ignore: one_member_abstracts
abstract class StoryRepository {
  Future<String> createStory({
    required String genre,
    required String keyWord,
    required String character,
  });
}
