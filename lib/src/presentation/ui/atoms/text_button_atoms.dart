import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';

class TextButtonAtoms extends StatelessWidget {
  const TextButtonAtoms({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TextAtoms(text: text),
    );
  }
}
