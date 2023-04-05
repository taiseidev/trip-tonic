import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';

/// 基本的にAtomsはAtomic Designにおいて最小単位のため、別のAtomsを呼び出すことはないと思われるが、
/// アプリケーションの統一性を担保するために、Atomsの中でAtomsを呼び出すことは許容する。（極力控える）
class ElevatedButtonAtoms extends StatelessWidget {
  const ElevatedButtonAtoms({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: TextAtoms(text: text),
    );
  }
}
