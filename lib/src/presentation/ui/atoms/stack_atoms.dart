import 'package:flutter/material.dart';

class StackAtoms extends StatelessWidget {
  const StackAtoms({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: children,
    );
  }
}
