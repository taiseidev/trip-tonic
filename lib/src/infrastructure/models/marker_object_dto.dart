import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/marker_object.dart';
import 'package:trip_tonic/src/infrastructure/utils/timestamp_converter.dart';

part 'marker_object_dto.freezed.dart';
part 'marker_object_dto.g.dart';

@freezed
class MarkerObjectDTO with _$MarkerObjectDTO {
  const factory MarkerObjectDTO({
    required String id,
    required String genre,
    required String country,
    required double latitude,
    required double longitude,
    @TimestampConverter() required DateTime createdAt,
  }) = _MarkerObjectDTO;
  const MarkerObjectDTO._();

  factory MarkerObjectDTO.fromJson(Map<String, dynamic> json) =>
      _$MarkerObjectDTOFromJson(json);

  factory MarkerObjectDTO.fromFirestore(DocumentSnapshot doc) =>
      MarkerObjectDTO.fromJson(doc.data()! as Map<String, dynamic>);

  MarkerObject toDomain(MarkerObjectDTO dto) => MarkerObject(
        id: dto.id,
        genre: dto.genre,
        country: dto.country,
        latitude: dto.latitude,
        longitude: dto.longitude,
        createdAt: dto.createdAt,
      );
}
