import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/novel/novel.dart';

part 'novel_list.freezed.dart';

@freezed
class NovelList with _$NovelList {
  const factory NovelList({
    // 小説のリスト
    @Default(<Novel>[]) List<Novel> novels,
  }) = _NovelList;

  const NovelList._();

  // 追加
  NovelList add(Novel novel) => copyWith(novels: [...novels, novel]);

  // 更新
  NovelList update(Novel novel) => copyWith(
        novels:
            novels.map((n) => n.novelId == novel.novelId ? novel : n).toList(),
      );

  // 削除
  NovelList remove(String novelId) => copyWith(
        novels: novels.where((novel) => novel.novelId != novelId).toList(),
      );

  // 小説数
  int count() => novels.length;

  // ジャンルに応じた小説を返却
  NovelList getNovelsByGenre(String genreId) => copyWith(
        novels: novels.where((novel) => novel.genreId == genreId).toList(),
      );
}
