import 'package:flutter/material.dart';
import 'package:trip_tonic/core/extensions/context_extension.dart';
import 'package:trip_tonic/src/presentation/main/main_page.dart';

/// ローカライズするため、タイトルのみtypeで切り替え
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({required this.type, super.key});

  final TabType type;

  // TODO: 仮でスタイルを設定
  TextStyle get style => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    switch (type) {
      case TabType.home:
        return Text(l10n.home, style: style);
      case TabType.history:
        return Text(l10n.history, style: style);
      case TabType.notification:
        return Text(l10n.notification, style: style);
      case TabType.profile:
        return Text(l10n.profile, style: style);
    }
  }
}
