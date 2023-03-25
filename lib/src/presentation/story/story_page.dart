import 'dart:async';

import 'package:custom_map_markers/custom_map_markers.dart';
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
              CustomGoogleMapMarkerBuilder(
                customMarkers: data.map(
                  (marker) {
                    return MarkerData(
                      marker: Marker(
                        markerId: MarkerId(marker.id),
                        position: LatLng(
                          marker.latitude,
                          marker.longitude,
                        ),
                      ),
                      child: Image.asset(
                        Assets.icon.markers.kkrnIconPin1Png.path,
                        width: 50,
                      ),
                    );
                  },
                ).toList(),
                builder: (BuildContext context, Set<Marker>? markers) {
                  if (markers == null) {
                    return const Center(child: Loading());
                  }
                  return GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(37.42796133580664, -122.085749655962),
                      zoom: 14.4746,
                    ),
                    markers: markers,
                    onMapCreated:
                        ref.watch(googleMapControllerProvider).complete,
                  );
                },
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
