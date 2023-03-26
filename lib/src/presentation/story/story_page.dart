import 'dart:async';

import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/gen/assets.gen.dart';
import 'package:trip_tonic/router/router.dart';
import 'package:trip_tonic/src/domain/usecase/story/get_markers_stream.dart';
import 'package:trip_tonic/src/presentation/story/story_detail_page.dart';
import 'package:trip_tonic/utils/loading.dart';

class StoryPage extends HookConsumerWidget {
  StoryPage({super.key});

  final Completer<GoogleMapController> _controller = Completer();

  Future<void> init() async {
    final controller = await _controller.future;
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
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final markers = ref.watch(getMarkersStreamProvider);

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
                        onTap: () => context.push(
                          StoryDetailPage.pagePath,
                          extra: TextExtra(text: marker.country),
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
                  // マップの初期設定
                  // builder内に非同期処理を呼ぶのは良くない気がするのでリファクタ？
                  // 追記：詳細画面からpopした際にもマップが際描画されてしまうため、どっちにしろリファクタする。
                  init();
                  return GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(37.42796133580664, -122.085749655962),
                      zoom: 14.4746,
                    ),
                    markers: markers,
                    onMapCreated: (GoogleMapController controller) {
                      if (!_controller.isCompleted) {
                        _controller.complete(controller);
                      }
                    },
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
