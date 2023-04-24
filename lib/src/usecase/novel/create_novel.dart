import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/core/exceptions/app_exceptions.dart';
import 'package:trip_tonic/core/extensions/exception_extension.dart';
import 'package:trip_tonic/src/domain/entities/story/story.dart';
import 'package:trip_tonic/src/infrastructure/repositories/story/story_repository_provider.dart';

part 'create_novel.g.dart';

@riverpod
Future<Story> createNovel(
  CreateNovelRef ref, {
  required String genre,
  required String keyWord,
  required List<String> characters,
}) async {
  late final Story story;
  try {
    story = await ref.read(storyRepositoryProvider).createStory(
          genre: genre,
          keyWord: keyWord,
          characters: characters,
        );
  } on DioError catch (err) {
    throw AppException.error(err.errorMessage);
  }
  return story;
}
