import 'dart:convert';
import '../../enums/app_locale_enum.dart';

/// Provides raw JSON translation data embedded synchronously for zero-latency SSR
/// pre-rendering and instant client hydration without network waterfalls.
abstract final class AppTranslationsDataRaw {
  static const String enJson = r'''{
  "sections": {
    "experienceTitle": "Work Experience",
    "skillsTitle": "Tools & Technologies",
    "projectsTitle": "Featured Projects"
  },
  "detail": {
    "backToHome": "← Back to Home",
    "projectNotFound": "Project Not Found",
    "projectNotFoundDesc": "The project you are looking for does not exist or has been removed.",
    "aboutProject": "About the Project",
    "myRole": "My Role",
    "keyContributions": "Key Contributions & Responsibilities",
    "screenshotGallery": "Screenshot Gallery",
    "clickToEnlarge": "(click to enlarge)",
    "technologiesUsed": "Technologies & Tools",
    "projectLinks": "Project Links & Platforms",
    "close": "Close",
    "availableForDownload": "Available for Download"
  },
  "footer": {
    "copyright": "© 2026 Ahmed Ameen Greynoon. Crafted with Jaspr (Dart)."
  },
  "actions": {
    "playStore": "Google Play",
    "appStore": "App Store",
    "website": "Website",
    "codeRepo": "GitHub Repo",
    "liveDemo": "Live Demo",
    "downloadApk": "Download APK",
    "downloadCv": "Download CV",
    "viewProject": "View Project"
  }
}''';

  static const String arJson = r'''{
  "sections": {
    "experienceTitle": "الخبرات المهنية",
    "skillsTitle": "المهارات والتقنيات",
    "projectsTitle": "المشاريع المميزة"
  },
  "detail": {
    "backToHome": "← العودة للرئيسية",
    "projectNotFound": "المشروع غير موجود",
    "projectNotFoundDesc": "المشروع الذي تبحث عنه غير متوفر أو تم نقله.",
    "aboutProject": "عن المشروع",
    "myRole": "دوري في المشروع",
    "keyContributions": "المساهمات والمسؤوليات الرئيسية",
    "screenshotGallery": "معرض لقطات الشاشة",
    "clickToEnlarge": "(انقر للتكبير)",
    "technologiesUsed": "التقنيات المستخدمة",
    "projectLinks": "روابط المشروع والمنصات",
    "close": "إغلاق",
    "availableForDownload": "متاح للتحميل"
  },
  "footer": {
    "copyright": "© 2026 أحمد أمين جرينون. صُمم بأناقة باستخدام Jaspr (Dart)."
  },
  "actions": {
    "playStore": "جوجل بلاي",
    "appStore": "آب ستور",
    "website": "الموقع الإلكتروني",
    "codeRepo": "مستودع الكود (GitHub)",
    "liveDemo": "معاينة مباشرة",
    "downloadApk": "تحميل ملف APK",
    "downloadCv": "تحميل السيرة الذاتية",
    "viewProject": "عرض تفاصيل المشروع"
  }
}''';

  static Map<String, dynamic> getMap(AppLocaleEnum locale) {
    final raw = locale == AppLocaleEnum.ar ? arJson : enJson;
    return jsonDecode(raw) as Map<String, dynamic>;
  }
}
