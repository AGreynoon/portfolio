import 'dart:convert';
import '../../enums/app_locale_enum.dart';

/// Provides raw JSON translation data embedded synchronously for zero-latency SSR
/// pre-rendering and instant client hydration without network waterfalls.
abstract final class AppTranslationsDataRaw {
  static const String enJson = r'''{
  "sections": {
    "experienceTitle": "Work Experience",
    "educationTitle": "Education",
    "skillsTitle": "Tools & Technologies",
    "projectsTitle": "Featured Projects",
    "contactTitle": "Get In Touch"
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
  "contact": {
    "subtitle": "Have a project inquiry, collaboration opportunity, or question? Send a message directly via WhatsApp or Email.",
    "emailPlaceholder": "Your email address (required to send email)...",
    "messagePlaceholder": "Write your message here...",
    "sendWhatsAppButton": "Send via WhatsApp",
    "sendEmailButton": "Send via Email",
    "sendButton": "Send via WhatsApp",
    "validationError": "Please write a message before sending.",
    "emailValidationError": "Please enter your email address to send an email.",
    "directWhatsApp": "Direct WhatsApp: +967 734 633 105"
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
    "educationTitle": "التعليم الأكاديمي",
    "skillsTitle": "المهارات والتقنيات",
    "projectsTitle": "المشاريع المميزة",
    "contactTitle": "تواصل معي"
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
  "contact": {
    "subtitle": "هل لديك استفسار عن مشروع، فرصة تعاون، أو سؤال؟ أرسل لي رسالة مباشرة عبر واتساب أو البريد الإلكتروني.",
    "emailPlaceholder": "بريدك الإلكتروني (مطلوب للإرسال عبر الإيميل)...",
    "messagePlaceholder": "اكتب رسالتك هنا...",
    "sendWhatsAppButton": "إرسال عبر واتساب",
    "sendEmailButton": "إرسال عبر البريد الإلكتروني",
    "sendButton": "إرسال عبر واتساب",
    "validationError": "يرجى كتابة رسالة قبل الإرسال.",
    "emailValidationError": "يرجى إدخال بريدك الإلكتروني لإرسال الرسالة عبر البريد.",
    "directWhatsApp": "واتساب مباشر: 105 633 734 967+"
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
