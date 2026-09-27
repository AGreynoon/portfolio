enum AppThemeModeEnum {
  dark('Dark', '🌙'),
  light('Light', '☀️');

  final String label;
  final String icon;

  const AppThemeModeEnum(this.label, this.icon);

  bool get isDark => this == AppThemeModeEnum.dark;
  bool get isLight => this == AppThemeModeEnum.light;

  AppThemeModeEnum get toggled =>
      isDark ? AppThemeModeEnum.light : AppThemeModeEnum.dark;
}

typedef AppThemeMode = AppThemeModeEnum;
