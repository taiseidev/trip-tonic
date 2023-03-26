import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class Story with _$Story {
  const factory Story({
    required String id,
    required String userId,
    required String title,
    required String content,
    required double latitude,
    required double longitude,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool isRead, // 閲覧済みの場合は再度APIを叩かないようにローカルに保存した該当の小説を返却
  }) = _Story;
  const Story._();

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
