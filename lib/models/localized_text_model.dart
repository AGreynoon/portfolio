import '../enums/app_locale_enum.dart';

export '../enums/app_locale_enum.dart';

class LocalizedTextModel {
  final String en;
  final String ar;

  const LocalizedTextModel({
    required this.en,
    required this.ar,
  });

  factory LocalizedTextModel.fromJson(Map<String, dynamic> json) {
    return LocalizedTextModel(
      en: json['en'] as String? ?? '',
      ar: json['ar'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'en': en,
        'ar': ar,
      };

  String get(AppLocaleEnum locale) {
    return locale == AppLocaleEnum.ar ? ar : en;
  }

  @override
  String toString() => en;
}

typedef LocalizedText = LocalizedTextModel;
