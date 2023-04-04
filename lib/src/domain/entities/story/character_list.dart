import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/character.dart';

part 'character_list.freezed.dart';

@freezed
class CharacterList with _$CharacterList {
  const factory CharacterList({
    @Default(<Character>[]) List<Character> characters,
  }) = _CharacterList;

  const CharacterList._();

  void remove(String character) => copyWith(
        characters:
            characters.where((element) => element.text != character).toList(),
      );
}
