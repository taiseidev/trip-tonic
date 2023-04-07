import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    // ジャンルの一意のID
    required String id,

    // ジャンル名
    required String genre,
  }) = _Genre;
  const Genre._();

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
