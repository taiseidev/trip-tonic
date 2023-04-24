import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/data_source/api/app_dio/app_dio_provider.dart';

part 'story_data_source.g.dart';

@RestApi()
abstract class StoryDataSource {
  factory StoryDataSource(Dio dio, {String? baseUrl}) = _StoryDataSource;

  @POST('createStory')
  Future<String> createStory(
    @Query('genre') String genre,
    @Query('keyWord') String keyWord,
    @Query('character') String character,
  );
}

final storyDataSourceProvider = Provider<StoryDataSource>(
  (ref) => StoryDataSource(ref.read(appDioProvider)),
);
