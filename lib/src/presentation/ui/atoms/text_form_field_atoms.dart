import 'package:flutter/material.dart';

class TextFormFieldAtoms extends StatelessWidget {
  const TextFormFieldAtoms({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(width: 5),
        ),
      ),
    );
  }
}
