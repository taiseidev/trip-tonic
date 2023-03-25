// domain/repositories/marker_repository.dart
import 'package:trip_tonic/src/domain/entities/story/marker_object.dart';

// ignore: one_member_abstracts
abstract class MarkerRepository {
  Stream<List<MarkerObject>> getMarkers();
}
