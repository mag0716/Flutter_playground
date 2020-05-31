import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'i18n_delegate.dart';
import 'messages_all.dart';

class I18n {
  I18n(this.localeName);

  static Future<I18n> load(Locale locale) {
    final String name = locale.countryCode == null || locale.countryCode.isEmpty
        ? locale.languageCode
        : locale.toString();
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

  // 以下に定義されたものだけ、intl_translation:generate_from_arb の生成時に利用される
  String get title => Intl.message(
        'Hello World',
        name: 'title',
      );
}
