// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_object_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarkerObjectDTO _$$_MarkerObjectDTOFromJson(Map<String, dynamic> json) =>
    _$_MarkerObjectDTO(
      id: json['id'] as String,
      genre: json['genre'] as String,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_MarkerObjectDTOToJson(_$_MarkerObjectDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genre': instance.genre,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
