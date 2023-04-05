import 'package:flutter/material.dart';
import 'package:trip_tonic/core/extensions/context_extension.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/text_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/pages/main/main_page.dart';

/// ローカライズするため、タイトルのみtypeで切り替え
class AppBarTitleMolecules extends StatelessWidget {
  const AppBarTitleMolecules({required this.type, super.key});

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
