
import 'package:flutter/material.dart';

class ImageAssetAtoms extends StatelessWidget {
  const ImageAssetAtoms({
    super.key,
    required this.path,
    this.fit,
    this.width,
    this.height,
  });

  final String path;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: fit ?? BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
    );
  }
}
