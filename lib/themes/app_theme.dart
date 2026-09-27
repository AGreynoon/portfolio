import 'package:jaspr/dom.dart';

/// Defines theme-level CSS rules and styles for the Jaspr portfolio.
/// Global stylesheet is loaded from web/themes/styles.css.
class AppTheme {
  const AppTheme._();

  static const String stylesheetPath = 'themes/styles.css';

  @css
  static List<StyleRule> get styles => [];
}

@css
List<StyleRule> get styles => AppTheme.styles;
