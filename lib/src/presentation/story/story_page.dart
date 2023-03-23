import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trip_tonic/gen/assets.gen.dart';

// ignore: must_be_immutable
class StoryPage extends HookConsumerWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future(() async {
          final controller = await ref.watch(controllerProvider).future;
          final mapStyle = await rootBundle.loadString(Assets.mapStyle);
          await Future.wait([
            controller.setMapStyle(mapStyle),
            controller.moveCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: const LatLng(37.42796133580664, -122.085749655962),
                  zoom: ref.read(zoomProvider),
                ),
              ),
            ),
          ]);
        });

        return null;
      },
      const [],
    );

    Future<void> updateCameraPosition(double value) async {
      ref.read(zoomProvider.notifier).update((state) => state = value);
      final controller = await ref.watch(controllerProvider).future;
      await controller.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: const LatLng(37.42796133580664, -122.085749655962),
            zoom: value,
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: const LatLng(37.42796133580664, -122.085749655962),
              zoom: ref.watch(zoomProvider),
            ),
            onMapCreated: (GoogleMapController controller) =>
                ref.watch(controllerProvider).complete(controller),
            markers: {
              for (var i = 0; i < 100; i++)
                Marker(
                  onTap: () {},
                  markerId: MarkerId(i.toString()),
                  position: LatLng(
                    getRandomLatLngWithin10Km(
                      34.95392818614791,
                      139.12417758678149,
                    ).latitude,
                    getRandomLatLngWithin10Km(
                      34.95392818614791,
                      139.12417758678149,
                    ).longitude,
                  ),
                ),
            },
          ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Container(
          //     width: 300,
          //     height: 50,
          //     padding: const EdgeInsets.symmetric(horizontal: 24),
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(30),
          //     ),
          //     child: TextFormField(
          //       decoration: const InputDecoration(
          //         border: InputBorder.none,
          //         hintText: 'Enter text here',
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

final zoomProvider = StateProvider<double>((_) => 15);

final controllerProvider = Provider<Completer<GoogleMapController>>(
  (_) => Completer(),
);

// 緯度経度オブジェクトを作成するためのクラス
class LatLngTest {
  LatLngTest(this.latitude, this.longitude);
  final double latitude;
  final double longitude;
}

// 指定された緯度経度から半径10km圏内のランダムな緯度経度を生成する関数
LatLngTest getRandomLatLngWithin10Km(
  double centerLatitude,
  double centerLongitude,
) {
  final random = Random();
  const radiusInKm = 5.0;
  const radiusInDegrees = radiusInKm / 111.32; // 約1度あたり111.32km

  // 角度の範囲: 0 ~ 360
  final randomAngle = random.nextDouble() * 360;

  // 半径の範囲: 0 ~ radiusInDegrees
  final randomRadius = radiusInDegrees * sqrt(random.nextDouble());

  // 経度を計算
  final randomLongitude =
      centerLongitude + randomRadius * cos(randomAngle * pi / 180);

  // 緯度を計算
  final randomLatitude =
      centerLatitude + randomRadius * sin(randomAngle * pi / 180);

  return LatLngTest(randomLatitude, randomLongitude);
}
