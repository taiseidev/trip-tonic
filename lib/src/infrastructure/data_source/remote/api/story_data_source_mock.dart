import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'story_data_source_mock.g.dart';

@RestApi(baseUrl: 'http://localhost:3001')
abstract class StoryDataSource {
  factory StoryDataSource(Dio dio, {String? baseUrl}) = _StoryDataSource;

  @POST('requestChatGPT')
  Future<String> createStory(
    @Query('genre') String genre,
    @Query('keyWord') String keyWord,
    @Query('character') String character,
  );
}

final storyDataSourceMockProvider = Provider<StoryDataSource>(
  (ref) => StoryDataSource(Dio()),
);
