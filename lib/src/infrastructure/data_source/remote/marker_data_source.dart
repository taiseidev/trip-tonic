import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/src/infrastructure/models/marker_object_dto.dart';
import 'package:trip_tonic/utils/constants.dart';

final markerDataSourceProvider = Provider<MarkerDataSource>(
  (ref) => MarkerDataSource(FirebaseFirestore.instance),
);

class MarkerDataSource {
  MarkerDataSource(this._firestore);
  final FirebaseFirestore _firestore;

  Stream<List<MarkerObjectDTO>> getMarkers() {
    return _firestore.collection(markers).snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                MarkerObjectDTO.fromFirestore,
              )
              .toList(),
        );
  }
}
