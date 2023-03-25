import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/data/repositories/marker_repository_impl.dart';
import 'package:trip_tonic/src/domain/entities/story/marker_object.dart';

final getMarkersStreamProvider = StreamProvider<List<MarkerObject>>((ref) {
  final markerRepository = ref.read(markerRepositoryProvider);
  return markerRepository.getMarkers();
});
