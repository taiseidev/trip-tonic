import 'package:flutter/material.dart';
import 'package:trip_tonic/extensions/context_extension.dart';
import 'package:trip_tonic/presentation/main/main_page.dart';

/// ローカライズするため、タイトルのみtypeで切り替え
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({required this.type, super.key});

  final TabType type;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    switch (type) {
      case TabType.home:
        return Text(l10n.home);
      case TabType.history:
        return Text(l10n.history);
      case TabType.notification:
        return Text(l10n.notification);
      case TabType.profile:
        return Text(l10n.profile);
    }
  }
}
