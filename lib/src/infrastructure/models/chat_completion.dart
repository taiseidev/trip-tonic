import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion.freezed.dart';
part 'chat_completion.g.dart';

@freezed
class ChatCompletion with _$ChatCompletion {
  factory ChatCompletion({
    String? id,
    String? object,
    int? created,
    String? model,
    Usage? usage,
    List<Choice>? choices,
  }) = _ChatCompletion;

  factory ChatCompletion.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionFromJson(json);
}

@freezed
class Usage with _$Usage {
  factory Usage({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}

@freezed
class Choice with _$Choice {
  factory Choice({
    Message? message,
    String? finishReason,
    int? index,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}

@freezed
class Message with _$Message {
  factory Message({
    String? role,
    String? content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
