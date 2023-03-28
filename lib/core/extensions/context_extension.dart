import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  ColorScheme get theme => Theme.of(this).colorScheme;
  AppLocalizations get l10n => AppLocalizations.of(this);
}
