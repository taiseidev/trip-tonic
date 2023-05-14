import 'package:flutter/material.dart';
import 'package:trip_tonic/core/extensions/context_extension.dart';
import 'package:trip_tonic/src/presentation/pages/main/scaffold_with_nav_bar.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';

/// ローカライズするため、タイトルのみtypeで切り替え
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({required this.type, super.key});

  final TabType type;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    switch (type) {
      case TabType.home:
        return TextAtoms(text: l10n.home);
      case TabType.history:
        return TextAtoms(text: l10n.history);
      case TabType.notification:
        return TextAtoms(text: l10n.notification);
      case TabType.profile:
        return TextAtoms(text: l10n.profile);
    }
  }
}
