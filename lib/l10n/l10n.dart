import 'package:flutter/material.dart';
import 'package:game_of_flutter/l10n/generated/app_localizations.dart';

late AppLocalizations l10n;

extension LocalisationsContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
