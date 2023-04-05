import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/elevated_button_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/image_asset_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';

class TopPageTemplate extends StatelessWidget {
  const TopPageTemplate({
    super.key,
    required this.appTitle,
    required this.imagePath,
    required this.logoText,
    required this.startText,
    required this.onPressed,
  });

  final String appTitle;
  final String imagePath;
  final String logoText;
  final String startText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ImageAssetAtoms(path: imagePath),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              left: 24,
            ),
            child: TextAtoms(
              text: appTitle,
              fontSize: 32,
              fontWeight: FontWeight.w900,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButtonAtoms(
                  onPressed: onPressed,
                  text: startText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
