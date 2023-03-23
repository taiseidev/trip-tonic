// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:trip_tonic/features/model/chat_completion.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://asia-northeast1-trip-tonic-dev.cloudfunctions.net/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('requestChatGPT')
  Future<ChatCompletion> createPost(
    @Query('content') String content,
  );
}
