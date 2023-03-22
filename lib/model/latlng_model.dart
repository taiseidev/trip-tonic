import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlng_model.freezed.dart';
part 'latlng_model.g.dart';

@freezed
class LatLngModel with _$LatLngModel {
  factory LatLngModel({
    double? latitude,
    double? longitude,
  }) = _LatLngModel;
  const LatLngModel._();

  factory LatLngModel.fromJson(Map<String, dynamic> json) =>
      _$LatLngModelFromJson(json);

  // 指定された緯度経度から半径10km圏内のランダムな緯度経度を生成する関数
  LatLngModel getRandomLatLngWithin5Km(
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

    return LatLngModel(latitude: randomLatitude, longitude: randomLongitude);
  }
}
