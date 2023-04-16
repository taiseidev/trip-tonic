import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';

@freezed
class Story with _$Story {
  const factory Story({
    // 小説の一意のID
    // 小説作成時点はまだ存在しないので、nullを許容する
    String? id,

    // 作成したユーザのID
    required String userId,

    // 小説のタイトル
    required String title,

    // 小説の内容
    required String content,

    // 作成日
    required DateTime createdAt,

    // 更新日
    DateTime? updatedAt,
  }) = _Story;
  const Story._();
}
