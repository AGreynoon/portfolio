import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import '../enums/app_locale_enum.dart';
import '../enums/app_theme_mode_enum.dart';

/// Helper utilities for safe DOM and web storage manipulation.
/// All browser-specific APIs are guarded with [kIsWeb] to ensure full SSR compatibility.
class DomHelper {
  const DomHelper._();

  static const String themeStorageKey = 'portfolio_theme';
  static const String localeStorageKey = 'portfolio_locale';

  /// Retrieves the saved theme mode from localStorage, defaulting to dark mode.
  static AppThemeModeEnum getInitialTheme() {
    if (kIsWeb) {
      try {
        final saved = web.window.localStorage.getItem(themeStorageKey);
        return saved == 'light' ? AppThemeModeEnum.light : AppThemeModeEnum.dark;
      } catch (_) {}
    }
    return AppThemeModeEnum.dark;
  }

  /// Synchronizes the theme mode to the DOM root attributes and localStorage.
  static void syncTheme(AppThemeModeEnum mode) {
    if (kIsWeb) {
      try {
        final themeValue = mode == AppThemeModeEnum.dark ? 'dark' : 'light';
        web.document.documentElement?.setAttribute('data-theme', themeValue);
        web.window.localStorage.setItem(themeStorageKey, themeValue);
      } catch (_) {}
    }
  }

  /// Retrieves the saved locale from localStorage, defaulting to English.
  static AppLocaleEnum getInitialLocale() {
    if (kIsWeb) {
      try {
        final saved = web.window.localStorage.getItem(localeStorageKey);
        return saved == 'ar' ? AppLocaleEnum.ar : AppLocaleEnum.en;
      } catch (_) {}
    }
    return AppLocaleEnum.en;
  }

  /// Synchronizes the active locale to the DOM root attributes (`dir`, `lang`) and localStorage.
  static void syncLocale(AppLocaleEnum locale) {
    if (kIsWeb) {
      try {
        final doc = web.document.documentElement;
        if (doc != null) {
          doc.setAttribute('dir', locale.dir);
          doc.setAttribute('lang', locale.code);
        }
        web.window.localStorage.setItem(localeStorageKey, locale.code);
      } catch (_) {}
    }
  }
}
