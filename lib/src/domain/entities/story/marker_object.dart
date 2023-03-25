import 'package:freezed_annotation/freezed_annotation.dart';

part 'marker_object.freezed.dart';

@freezed
class MarkerObject with _$MarkerObject {
  const factory MarkerObject({
    required String id,
    required String genre,
    required String country,
    required double latitude,
    required double longitude,
    required DateTime createdAt,
  }) = _MarkerObject;
}
