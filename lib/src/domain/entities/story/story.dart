import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class Story with _$Story {
  const factory Story({
    // 小説の一意のID
    required String id,

    // 作成したユーザのID
    required String userId,

    // 小説のタイトル
    required String title,

    // 小説の内容
    required String content,

    // 作成日
    required DateTime createdAt,

    // 更新日
    required DateTime updatedAt,
  }) = _Story;
  const Story._();

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
