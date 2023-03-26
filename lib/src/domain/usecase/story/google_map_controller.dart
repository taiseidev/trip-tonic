import 'dart:async';

import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trip_tonic/gen/assets.gen.dart';

final googleMapControllerProvider =
    FutureProvider.autoDispose<GoogleMapController>((ref) async {
  final completer = ref.read(controllerProvider);
  final controller = await completer.future;
  final mapStyle = await rootBundle.loadString(Assets.mapStyle);
  await Future.wait(
    [
      controller.setMapStyle(mapStyle),
      controller.moveCamera(
        CameraUpdate.newCameraPosition(
          const CameraPosition(
            target: LatLng(37.42796133580664, -122.085749655962),
            zoom: 1,
          ),
        ),
      ),
    ],
  );
  return controller;
});

final controllerProvider = Provider.autoDispose<Completer<GoogleMapController>>(
  (ref) => Completer<GoogleMapController>(),
);
