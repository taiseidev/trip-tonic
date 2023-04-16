import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/genre/genre.dart';
import 'package:trip_tonic/src/domain/entities/story/character.dart';

part 'story_create_state.freezed.dart';

@freezed
class StoryCreateState with _$StoryCreateState {
  const factory StoryCreateState({
    // ユーザが入力した登場人物の一覧を保持
    List<Character>? characters,

    // dbから取得したジャンルの一覧を保持
    required List<Genre> genres,
  }) = _StoryCreateState;
  const StoryCreateState._();

  List<Character> addCharacter({
    required String id,
    required String name,
  }) {
    return [
      ...?characters,
      Character(
        id: id,
        name: name,
      ),
    ];
  }

  List<Character> removeCharacter({
    required String id,
  }) =>
      characters?.where((character) => character.id != id).toList() ?? [];
}
