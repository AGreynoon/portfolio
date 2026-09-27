enum AppLocaleEnum {
  en('English', 'en', 'ltr'),
  ar('العربية', 'ar', 'rtl');

  final String label;
  final String code;
  final String dir;

  const AppLocaleEnum(this.label, this.code, this.dir);

  bool get isArabic => this == AppLocaleEnum.ar;
  bool get isEnglish => this == AppLocaleEnum.en;
  bool get isRtl => dir == 'rtl';
  bool get isLtr => dir == 'ltr';

  AppLocaleEnum get toggled =>
      isArabic ? AppLocaleEnum.en : AppLocaleEnum.ar;
}

typedef AppLocale = AppLocaleEnum;
