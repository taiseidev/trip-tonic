import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/models/chat_completion.dart';

part 'story_data_source.g.dart';

@RestApi(baseUrl: 'https://asia-northeast1-trip-tonic.cloudfunctions.net/')
abstract class StoryDataSource {
  factory StoryDataSource(Dio dio, {String? baseUrl}) = _StoryDataSource;

  @POST('requestChatGPT')
  Future<ChatCompletion> createStory(
    @Query('location') String location,
    @Query('character') String character,
  );
}

final storyDataSourceProvider = Provider<StoryDataSource>(
  (ref) => StoryDataSource(Dio()),
);
