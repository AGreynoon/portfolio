import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../enums/app_theme_mode_enum.dart';
import '../helpers/dom_helper.dart';

class ThemeModeNotifier extends Notifier<AppThemeModeEnum> {
  @override
  AppThemeModeEnum build() {
    final initial = DomHelper.getInitialTheme();
    DomHelper.syncTheme(initial);
    return initial;
  }

  void toggleTheme() {
    final next = state.toggled;
    setTheme(next);
  }

  void setTheme(AppThemeModeEnum mode) {
    if (state == mode) return;
    state = mode;
    DomHelper.syncTheme(mode);
  }
}

final themeModeProvider =
    NotifierProvider<ThemeModeNotifier, AppThemeModeEnum>(ThemeModeNotifier.new);
