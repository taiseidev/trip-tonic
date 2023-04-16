import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel.freezed.dart';
part 'novel.g.dart';

@freezed
class Novel with _$Novel {
  const factory Novel({
    // 小説のID
    required String novelId,

    // 小説を作成したユーザのID
    required String userId,

    // 小説のジャンル
    required String genreId,

    // 小説のタイトル
    required String title,

    // 小説の内容
    required String content,

    // 公開設定
    @Default(false) bool isPrivate,

    // 小説の背景画像
    required String backgroundImage,

    // 作成日
    required DateTime createdAt,

    // 更新日
    DateTime? updatedAt,
  }) = _Novel;

  const Novel._();

  factory Novel.fromJson(Map<String, dynamic> json) => _$NovelFromJson(json);
}
