// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:trip_tonic/model/chat_completion.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.openai.com/v1/chat/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('completions')
  @Headers(<String, String>{'Content-Type': 'application/json'})
  Future<ChatCompletion> createPost(
    @Header('Authorization') String token,
    @Body() PostData postData,
  );
}

class PostData {
  PostData({required this.body});
  final String body;

  Map<String, dynamic> toJson() {
    return {
      'model': 'gpt-3.5-turbo',
      'messages': [
        {
          'role': 'user',
          'content': body,
        }
      ]
    };
  }
}
