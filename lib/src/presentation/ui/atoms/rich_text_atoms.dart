import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextAtoms extends StatelessWidget {
  const RichTextAtoms({
    super.key,
    required this.introText,
    required this.termsOfServiceText,
    required this.conclusionText,
    required this.recognizer,
  });

  final String introText;
  final String termsOfServiceText;
  final String conclusionText;
  final GestureRecognizer? recognizer;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(text: introText),
          TextSpan(
            text: termsOfServiceText,
            style: const TextStyle(
              color: Colors.blue,
            ),
            recognizer: recognizer,
          ),
          TextSpan(text: conclusionText),
        ],
      ),
    );
  }
}
