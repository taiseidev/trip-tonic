import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/elevated_button_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/rich_text_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_button_atoms.dart';

class PrimaryDialogOrganisms extends StatelessWidget {
  const PrimaryDialogOrganisms({
    super.key,
    required this.titleText,
    required this.okText,
    required this.onOkPressed,
    required this.cancelText,
    required this.onCancelPressed,
    required this.introText,
    required this.termsOfServiceText,
    required this.conclusionText,
    required this.recognizer,
  });

  final String titleText;
  final String okText;
  final VoidCallback onOkPressed;
  final String cancelText;
  final VoidCallback onCancelPressed;

  final String introText;
  final String termsOfServiceText;
  final String conclusionText;
  final GestureRecognizer? recognizer;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextAtoms(text: titleText),
      content: RichTextAtoms(
        introText: introText,
        termsOfServiceText: termsOfServiceText,
        conclusionText: conclusionText,
        recognizer: recognizer,
      ),
      actions: [
        TextButtonAtoms(
          onPressed: onCancelPressed,
          text: cancelText,
        ),
        ElevatedButtonAtoms(
          onPressed: onOkPressed,
          text: okText,
        ),
      ],
    );
  }
}
