// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarkerObject _$$_MarkerObjectFromJson(Map<String, dynamic> json) =>
    _$_MarkerObject(
      id: json['id'] as String,
      genre: json['genre'] as String,
      country: json['country'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_MarkerObjectToJson(_$_MarkerObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genre': instance.genre,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
