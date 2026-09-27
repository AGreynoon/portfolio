import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../enums/app_locale_enum.dart';
import '../helpers/dom_helper.dart';

class LocaleNotifier extends Notifier<AppLocaleEnum> {
  @override
  AppLocaleEnum build() {
    final initial = DomHelper.getInitialLocale();
    DomHelper.syncLocale(initial);
    return initial;
  }

  void toggleLocale() {
    final next = state.toggled;
    setLocale(next);
  }

  void setLocale(AppLocaleEnum locale) {
    if (state == locale) return;
    state = locale;
    DomHelper.syncLocale(locale);
  }
}

final localeProvider =
    NotifierProvider<LocaleNotifier, AppLocaleEnum>(LocaleNotifier.new);
