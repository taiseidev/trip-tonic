import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: must_be_immutable
class PlanPage extends HookConsumerWidget {
  PlanPage({super.key});

  final Completer<GoogleMapController> _controller = Completer();
  late final Timer timer;

  Future<void> initZoomAnimation(double zoom) async {
    final controller = await _controller.future;
    await controller.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: const LatLng(37.42796133580664, -122.085749655962),
          zoom: zoom,
        ),
      ),
    );
  }

  late GooglePlace googlePlace;
  List<AutocompletePrediction> predictions = [];

  Future<void> autoCompleteSearch(String value) async {
    final result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null) {
      predictions = result.predictions!;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(testProvider);
    final zoom = useState<double>(10);

    useEffect(
      () {
        googlePlace = GooglePlace('AIzaSyBNjmqqXgOWlWSRaahm2EZk-GQxj6b4PYo');
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await Future<void>.delayed(const Duration(seconds: 1));
          timer = Timer.periodic(
            const Duration(milliseconds: 1),
            (_) {
              if (zoom.value >= 16) {
                return timer.cancel();
              }
              initZoomAnimation(zoom.value += 0.01);
            },
          );
        });
        return null;
      },
      [],
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await autoCompleteSearch('東京');

          print(predictions[0].description);
          final locations = await locationFromAddress(
            predictions[0].description.toString(),
          );

          print(locations.first.latitude);
          print(locations.first.longitude);

          // setState(() {
          //   // 取得した経度と緯度を配列に格納
          //   LatLng.add(locations.first.latitude);
          //   LatLng.add(locations.first.longitude);
          // });
        },
      ),
      body: data.when(
        data: (data) {
          return GoogleMap(
            initialCameraPosition: CameraPosition(
              target: const LatLng(37.42796133580664, -122.085749655962),
              zoom: zoom.value,
            ),
            onMapCreated: _controller.complete,
            markers: {
              const Marker(
                markerId: MarkerId('test'),
                position: LatLng(37.42796133580664, -122.085749655962),
              ),
            },
          );
        },
        error: (error, stackTrace) => const Center(
          child: Text('エラーが発生しました'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

final testProvider = FutureProvider<String>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'テスト';
});
