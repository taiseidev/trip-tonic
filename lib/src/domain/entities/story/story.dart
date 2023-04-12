import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

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

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  factory Story.fromResponse({
    required String userId,
    required String result,
    required DateTime createTime,
  }) {
    // ここでresultをパースして、titleとcontentを取得する
    // TODO: titleとcontentの整形処理はバックエンドで行うか検討
    final title = extractTitle(result);
    final content = extractContent(result);

    print(title);
    return Story(
      userId: userId,
      title: title,
      content: content,
      createdAt: createTime,
    );
  }
}

String extractTitle(String text) {
  final titleRegex = RegExp(r'タイトル：\s*(.+)\n');
  final match = titleRegex.firstMatch(text);
  return match != null ? match.group(1)! : '';
}

String extractContent(String text) {
  return text.replaceAll(RegExp(r'^タイトル：.*\n'), '').trim();
}
