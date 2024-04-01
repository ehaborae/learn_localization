import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Localizer {
  static const en = LocalizerData(name: _en, locale: Locale(_en));
  static const ar = LocalizerData(name: _ar, locale: Locale(_ar));
  static const fr = LocalizerData(name: _fr, locale: Locale(_fr));

  static const _en = 'en';
  static const _ar = 'ar';
  static const _fr = 'fr';

  static const languages = <Locale>[
    Locale(_en),
    Locale(_ar),
    Locale(_fr),
  ];


  static const localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}

class LocalizerData {
  final String name;
  final Locale locale;

  const LocalizerData({
    required this.name,
    required this.locale,
  });
}
