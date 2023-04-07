import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/genre.dart';

part 'genre_dto.freezed.dart';
part 'genre_dto.g.dart';

@freezed
class GenreDTO with _$GenreDTO {
  const factory GenreDTO({
    required String id,
    required String genre,
  }) = _GenreDTO;
  const GenreDTO._();

  factory GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$GenreDTOFromJson(json);

  factory GenreDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return GenreDTO(
      id: doc.id,
      genre: data['genre'] as String,
    );
  }

  Genre toDomain(GenreDTO dto) => Genre(
        id: dto.id,
        genre: dto.genre,
      );
}
