import 'package:flutter/material.dart';

class IconAtoms extends StatelessWidget {
  const IconAtoms({
    super.key,
    required this.icon,
    required this.color,
  });

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
    );
  }
}
