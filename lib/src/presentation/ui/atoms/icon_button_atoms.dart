import 'package:flutter/material.dart';

class IconButtonAtoms extends StatelessWidget {
  const IconButtonAtoms({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
