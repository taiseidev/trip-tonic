import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/elevated_button_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';

class TopPageTemplate extends StatelessWidget {
  const TopPageTemplate({
    super.key,
    required this.logoText,
    required this.startText,
    required this.onPressed,
  });

  final String logoText;
  final String startText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextAtoms(text: logoText),
          ElevatedButtonAtoms(
            onPressed: onPressed,
            text: startText,
          ),
        ],
      ),
    );
  }
}
