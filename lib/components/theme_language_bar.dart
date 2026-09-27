import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../enums/app_locale_enum.dart';
import '../enums/app_theme_mode_enum.dart';
import '../providers/locale_provider.dart';
import '../providers/theme_provider.dart';

class ThemeLanguageBar extends StatelessComponent {
  const ThemeLanguageBar({super.key});

  @override
  Component build(BuildContext context) {
    final themeMode = context.watch(themeModeProvider);
    final locale = context.watch(localeProvider);

    final isDark = themeMode.isDark;
    final isAr = locale.isArabic;

    return div(classes: 'top-bar', [
      // Language Toggle Pill
      div(classes: 'toggle-group', [
        button(
          type: ButtonType.button,
          classes: 'toggle-pill ${!isAr ? "active" : ""}',
          onClick: () =>
              context.read(localeProvider.notifier).setLocale(AppLocaleEnum.en),
          attributes: {'aria-label': 'English'},
          [.text('EN')],
        ),
        button(
          type: ButtonType.button,
          classes: 'toggle-pill ${isAr ? "active" : ""}',
          onClick: () =>
              context.read(localeProvider.notifier).setLocale(AppLocaleEnum.ar),
          attributes: {'aria-label': 'العربية'},
          [.text('عربي')],
        ),
      ]),

      // Theme Toggle Pill
      div(classes: 'toggle-group', [
        button(
          type: ButtonType.button,
          classes: 'toggle-pill ${isDark ? "active" : ""}',
          onClick: () => context
              .read(themeModeProvider.notifier)
              .setTheme(AppThemeModeEnum.dark),
          attributes: {'aria-label': 'Dark mode'},
          [.text('🌙')],
        ),
        button(
          type: ButtonType.button,
          classes: 'toggle-pill ${!isDark ? "active" : ""}',
          onClick: () => context
              .read(themeModeProvider.notifier)
              .setTheme(AppThemeModeEnum.light),
          attributes: {'aria-label': 'Light mode'},
          [.text('☀️')],
        ),
      ]),
    ]);
  }
}
