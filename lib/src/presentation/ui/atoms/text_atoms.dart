import 'package:flutter/material.dart';

class TextAtoms extends StatelessWidget {
  const TextAtoms({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w700,
      ),
    );
  }
}
