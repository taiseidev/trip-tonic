import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository_impl.dart';

final storyRepositoryImplProvider =
    Provider<StoryRepository>(StoryRepository.new);
