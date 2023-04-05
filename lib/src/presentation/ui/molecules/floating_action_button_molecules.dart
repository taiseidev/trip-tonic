import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/icon_atoms.dart';

class FloatingActionButtonMolecules extends StatelessWidget {
  const FloatingActionButtonMolecules({
    super.key,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.icon = Icons.add,
    this.iconColor = Colors.black,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      child: IconAtoms(
        icon: icon,
        color: iconColor,
      ),
    );
  }
}
