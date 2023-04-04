import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/presentation/story/story_create/story_create_state.dart';

part 'story_create_notifier.g.dart';

@riverpod
class StoryCreateNotifier extends AutoDisposeAsyncNotifier<StoryCreateState> {
  StoryCreateNotifier();

  @override
  FutureOr<StoryCreateState> build() {
    return const StoryCreateState();
  }

  Future<void> createStory() async {}

  void removeCharacter(String character) {}
}
