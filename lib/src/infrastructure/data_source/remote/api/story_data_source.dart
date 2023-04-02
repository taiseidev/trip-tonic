import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'story_data_source.g.dart';

@RestApi(baseUrl: 'https://asia-northeast1-trip-tonic.cloudfunctions.net/')
abstract class StoryDataSource {
  factory StoryDataSource(Dio dio, {String? baseUrl}) = _StoryDataSource;

  @POST('requestChatGPT')
  Future<String> createStory(
    @Query('genre') String genre,
    @Query('keyWord') String keyWord,
    @Query('character') String character,
  );
}

final storyDataSourceProvider = Provider<StoryDataSource>(
  (ref) => StoryDataSource(Dio()),
);
