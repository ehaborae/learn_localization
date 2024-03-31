import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Localizer {
  static const en = Locale('en');

  static const ar = Locale('ar');

  static const fr = Locale('fr');

  static const languages = [
    en,
    ar,
    fr,
  ];

  static const localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}
