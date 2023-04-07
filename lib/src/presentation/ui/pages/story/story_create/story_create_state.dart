import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/character_list.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';

part 'story_create_state.freezed.dart';

@freezed
class StoryCreateState with _$StoryCreateState {
  const factory StoryCreateState({
    CharacterList? characters,
    required List<Genre> genres,
  }) = _StoryCreateState;
}
