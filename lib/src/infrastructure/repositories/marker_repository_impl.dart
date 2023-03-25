import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/src/domain/entities/story/marker_object.dart';
import 'package:trip_tonic/src/domain/repositories/marker_repository.dart';
import 'package:trip_tonic/utils/constants.dart';

class MarkerRepositoryImpl implements MarkerRepository {
  MarkerRepositoryImpl(this._firestore);
  final FirebaseFirestore _firestore;

  @override
  Stream<List<MarkerObject>> getMarkers() {
    return _firestore.collection(markers).snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                MarkerObject.fromFirestore,
              )
              .toList(),
        );
  }
}

final markerRepositoryProvider = Provider<MarkerRepository>(
  (_) => MarkerRepositoryImpl(FirebaseFirestore.instance),
);
