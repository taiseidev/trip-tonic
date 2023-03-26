import 'package:trip_tonic/src/infrastructure/models/chat_completion.dart';

// ignore: one_member_abstracts
abstract class StoryRepository {
  Future<ChatCompletion> createStory({
    required String location,
    required String character,
  });
}
