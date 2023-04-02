import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/core/utils/loading.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story_repository_impl.dart';

final createStoryProvider = Provider<CreateStory>(CreateStory.new);

class CreateStory {
  CreateStory(this.ref);
  final ProviderRef<CreateStory> ref;

  Future<String> call({
    required String genre,
    required String keyWord,
    required String character,
  }) async {
    final loading = ref.read(loadingStateProvider.notifier)
      ..state = const AsyncLoading();
    try {
      final result = await ref.read(storyRepositoryImplProvider).createStory(
            genre: genre,
            keyWord: keyWord,
            character: character,
          );
      loading.state = AsyncValue.data(result);
      return result;
    } on Exception {
      rethrow;
    }
  }
}
