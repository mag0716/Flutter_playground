import 'package:flutter/material.dart';
import 'package:i18nsample/i18n/i18n_delegate.dart';
import 'package:i18nsample/i18n/messages_all.dart';
import 'package:intl/intl.dart';

class I18n {
  I18n(this.localeName);

  static Future<I18n> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      return I18n(localeName);
    });
  }

  static I18n of(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  static const LocalizationsDelegate<I18n> delegate = I18nDelegate();

  final String localeName;
}
