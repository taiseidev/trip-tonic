/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  $AssetsIconMarkersGen get markers => const $AssetsIconMarkersGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/building.jpeg
  AssetGenImage get building =>
      const AssetGenImage('assets/images/building.jpeg');

  /// File path: assets/images/un.png
  AssetGenImage get un => const AssetGenImage('assets/images/un.png');

  /// List of all assets
  List<AssetGenImage> get values => [building, un];
}

class $AssetsIconMarkersGen {
  const $AssetsIconMarkersGen();

  /// File path: assets/icon/markers/kkrn_icon_pin_1.png
  AssetGenImage get kkrnIconPin1Png =>
      const AssetGenImage('assets/icon/markers/kkrn_icon_pin_1.png');

  /// File path: assets/icon/markers/kkrn_icon_pin_1.svg
  String get kkrnIconPin1Svg => 'assets/icon/markers/kkrn_icon_pin_1.svg';

  /// File path: assets/icon/markers/kkrn_icon_pin_2.png
  AssetGenImage get kkrnIconPin2Png =>
      const AssetGenImage('assets/icon/markers/kkrn_icon_pin_2.png');

  /// File path: assets/icon/markers/kkrn_icon_pin_2.svg
  String get kkrnIconPin2Svg => 'assets/icon/markers/kkrn_icon_pin_2.svg';

  /// File path: assets/icon/markers/kkrn_icon_pin_3.png
  AssetGenImage get kkrnIconPin3Png =>
      const AssetGenImage('assets/icon/markers/kkrn_icon_pin_3.png');

  /// File path: assets/icon/markers/kkrn_icon_pin_3.svg
  String get kkrnIconPin3Svg => 'assets/icon/markers/kkrn_icon_pin_3.svg';

  /// File path: assets/icon/markers/kkrn_icon_pin_4.png
  AssetGenImage get kkrnIconPin4Png =>
      const AssetGenImage('assets/icon/markers/kkrn_icon_pin_4.png');

  /// File path: assets/icon/markers/kkrn_icon_pin_4.svg
  String get kkrnIconPin4Svg => 'assets/icon/markers/kkrn_icon_pin_4.svg';

  /// File path: assets/icon/markers/kkrn_icon_pin_5.png
  AssetGenImage get kkrnIconPin5Png =>
      const AssetGenImage('assets/icon/markers/kkrn_icon_pin_5.png');

  /// File path: assets/icon/markers/kkrn_icon_pin_5.svg
  String get kkrnIconPin5Svg => 'assets/icon/markers/kkrn_icon_pin_5.svg';

  /// File path: assets/icon/markers/kkrn_icon_pin_6.png
  AssetGenImage get kkrnIconPin6Png =>
      const AssetGenImage('assets/icon/markers/kkrn_icon_pin_6.png');

  /// File path: assets/icon/markers/kkrn_icon_pin_6.svg
  String get kkrnIconPin6Svg => 'assets/icon/markers/kkrn_icon_pin_6.svg';

  /// List of all assets
  List<dynamic> get values => [
        kkrnIconPin1Png,
        kkrnIconPin1Svg,
        kkrnIconPin2Png,
        kkrnIconPin2Svg,
        kkrnIconPin3Png,
        kkrnIconPin3Svg,
        kkrnIconPin4Png,
        kkrnIconPin4Svg,
        kkrnIconPin5Png,
        kkrnIconPin5Svg,
        kkrnIconPin6Png,
        kkrnIconPin6Svg
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String mapStyle = 'assets/map_style.json';

  /// List of all assets
  List<String> get values => [mapStyle];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
