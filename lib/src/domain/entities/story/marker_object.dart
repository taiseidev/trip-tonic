import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tonic/src/domain/entities/story/timestamp_converter.dart';

part 'marker_object.freezed.dart';
part 'marker_object.g.dart';

@freezed
class MarkerObject with _$MarkerObject {
  const factory MarkerObject({
    required String id,
    required String genre,
    required String country,
    required double latitude,
    required double longitude,
    @TimestampConverter() required DateTime createdAt,
  }) = _MarkerObject;

  factory MarkerObject.fromJson(Map<String, dynamic> json) =>
      _$MarkerObjectFromJson(json);

  factory MarkerObject.fromFirestore(DocumentSnapshot doc) {
    return MarkerObject.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
