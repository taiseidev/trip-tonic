import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/gen/assets.gen.dart';
import 'package:trip_tonic/src/domain/usecase/story/get_markers_stream.dart';
import 'package:trip_tonic/src/presentation/hooks/user_effect_once.dart';
import 'package:trip_tonic/utils/loading.dart';

class StoryPage extends HookConsumerWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final markers = ref.watch(getMarkersStreamProvider);

    useEffectOnce(
      () {
        Future(
          () async {
            final controller =
                await ref.watch(googleMapControllerProvider).future;
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
          },
        );
        return null;
      },
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: markers.when(
        data: (data) {
          return Stack(
            alignment: Alignment.bottomRight,
            children: [
              GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(37.42796133580664, -122.085749655962),
                  zoom: 1,
                ),
                onMapCreated: ref.watch(googleMapControllerProvider).complete,
                markers: data.map(
                  (marker) {
                    return Marker(
                      markerId: MarkerId(marker.id),
                      position: LatLng(
                        marker.latitude,
                        marker.longitude,
                      ),
                    );
                  },
                ).toSet(),
              ),
            ],
          );
        },
        error: (error, stackTrace) {
          return null;
        },
        loading: () => const Center(
          child: Loading(),
        ),
      ),
    );
  }
}

final googleMapControllerProvider = Provider<Completer<GoogleMapController>>(
  (ref) => Completer<GoogleMapController>(),
);
