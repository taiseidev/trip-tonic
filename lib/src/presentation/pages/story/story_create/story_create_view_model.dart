import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/core/utils/uuid.dart';
import 'package:trip_tonic/src/presentation/pages/story/story_create/story_create_state.dart';
import 'package:trip_tonic/src/usecase/genre/fetch_genres_use_case.dart';

part 'story_create_view_model.g.dart';

@riverpod
class StoryCreateViewModel extends AutoDisposeAsyncNotifier<StoryCreateState> {
  StoryCreateViewModel();

  @override
  Future<StoryCreateState> build() async {
    final genres = await ref.watch(fetchGenresUsecaseProvider)();
    return StoryCreateState(genres: genres);
  }

  void addCharacter({
    required String name,
  }) =>
      state = AsyncData(
        state.value!.copyWith(
          characters: state.value!.addCharacter(
            id: getUuid(),
            name: name,
          ),
        ),
      );

  void removeCharacter({required String id}) => state = AsyncData(
        state.value!.copyWith(
          characters: state.value!.removeCharacter(id: id),
        ),
      );
}
