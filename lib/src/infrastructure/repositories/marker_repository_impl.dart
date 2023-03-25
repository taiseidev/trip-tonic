import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/domain/entities/story/marker_object.dart';
import 'package:trip_tonic/src/domain/repositories/marker_repository.dart';
import 'package:trip_tonic/src/infrastructure/data_source/remote/marker_data_source.dart';

// domain層にFirestoreの依存を持たせないため、DTOを介してMarkerObjectを作成
class MarkerRepositoryImpl implements MarkerRepository {
  MarkerRepositoryImpl(this.ref);
  final ProviderRef<MarkerRepository> ref;

  @override
  Stream<List<MarkerObject>> getMarkers() =>
      ref.read(markerDataSourceProvider).getMarkers().asyncMap(
            (event) => event.map((e) => e.toDomain(e)).toList(),
          );
}

final markerRepositoryProvider = Provider<MarkerRepository>(
  MarkerRepositoryImpl.new,
);
