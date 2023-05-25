import 'package:flutter/material.dart';

enum Locales {
  italian(Locale('it')),
  english(Locale('en'));

  const Locales(this.locale);

  final Locale locale;

  static Locale get fallback {
    return Locales.english.locale;
  }

  static List<Locale> get available {
    return Locales.values.map((e) {
      return e.locale;
    }).toList();
  }
}
