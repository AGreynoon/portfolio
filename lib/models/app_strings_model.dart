import '../data/raw/app_translations_data_raw.dart';
import '../enums/app_locale_enum.dart';

/// Strongly-typed UI localization model parsed from the JSON translation datasets.
class AppStringsModel {
  final SectionStringsModel sections;
  final DetailStringsModel detail;
  final FooterStringsModel footer;
  final ActionStringsModel actions;
  final ContactStringsModel contact;

  const AppStringsModel({
    required this.sections,
    required this.detail,
    required this.footer,
    required this.actions,
    required this.contact,
  });

  factory AppStringsModel.fromJson(Map<String, dynamic> json) {
    return AppStringsModel(
      sections: SectionStringsModel.fromJson(json['sections'] as Map<String, dynamic>? ?? {}),
      detail: DetailStringsModel.fromJson(json['detail'] as Map<String, dynamic>? ?? {}),
      footer: FooterStringsModel.fromJson(json['footer'] as Map<String, dynamic>? ?? {}),
      actions: ActionStringsModel.fromJson(json['actions'] as Map<String, dynamic>? ?? {}),
      contact: ContactStringsModel.fromJson(json['contact'] as Map<String, dynamic>? ?? {}),
    );
  }

  static final Map<AppLocaleEnum, AppStringsModel> _cache = {};

  /// Retrieves the strongly-typed strings for [locale].
  static AppStringsModel of(AppLocaleEnum locale) {
    return _cache.putIfAbsent(locale, () {
      final map = AppTranslationsDataRaw.getMap(locale);
      return AppStringsModel.fromJson(map);
    });
  }
}

typedef AppStrings = AppStringsModel;

class SectionStringsModel {
  final String experienceTitle;
  final String educationTitle;
  final String skillsTitle;
  final String projectsTitle;
  final String contactTitle;

  const SectionStringsModel({
    required this.experienceTitle,
    required this.educationTitle,
    required this.skillsTitle,
    required this.projectsTitle,
    required this.contactTitle,
  });

  factory SectionStringsModel.fromJson(Map<String, dynamic> json) => SectionStringsModel(
    experienceTitle: json['experienceTitle'] as String? ?? 'Work Experience',
    educationTitle: json['educationTitle'] as String? ?? 'Education',
    skillsTitle: json['skillsTitle'] as String? ?? 'Tools & Technologies',
    projectsTitle: json['projectsTitle'] as String? ?? 'Featured Projects',
    contactTitle: json['contactTitle'] as String? ?? 'Contact Me',
  );
}

typedef SectionStrings = SectionStringsModel;

class DetailStringsModel {
  final String backToHome;
  final String projectNotFound;
  final String projectNotFoundDesc;
  final String aboutProject;
  final String myRole;
  final String keyContributions;
  final String screenshotGallery;
  final String clickToEnlarge;
  final String technologiesUsed;
  final String projectLinks;
  final String close;
  final String availableForDownload;

  const DetailStringsModel({
    required this.backToHome,
    required this.projectNotFound,
    required this.projectNotFoundDesc,
    required this.aboutProject,
    required this.myRole,
    required this.keyContributions,
    required this.screenshotGallery,
    required this.clickToEnlarge,
    required this.technologiesUsed,
    required this.projectLinks,
    required this.close,
    required this.availableForDownload,
  });

  factory DetailStringsModel.fromJson(Map<String, dynamic> json) => DetailStringsModel(
    backToHome: json['backToHome'] as String? ?? '← Back to Home',
    projectNotFound: json['projectNotFound'] as String? ?? 'Project Not Found',
    projectNotFoundDesc: json['projectNotFoundDesc'] as String? ?? '',
    aboutProject: json['aboutProject'] as String? ?? 'About the Project',
    myRole: json['myRole'] as String? ?? 'My Role',
    keyContributions: json['keyContributions'] as String? ?? 'Key Contributions',
    screenshotGallery: json['screenshotGallery'] as String? ?? 'Screenshot Gallery',
    clickToEnlarge: json['clickToEnlarge'] as String? ?? '(click to enlarge)',
    technologiesUsed: json['technologiesUsed'] as String? ?? 'Technologies & Tools',
    projectLinks: json['projectLinks'] as String? ?? 'Project Links & Platforms',
    close: json['close'] as String? ?? 'Close',
    availableForDownload: json['availableForDownload'] as String? ?? 'Available for Download',
  );
}

typedef DetailStrings = DetailStringsModel;

class FooterStringsModel {
  final String copyright;

  const FooterStringsModel({required this.copyright});

  factory FooterStringsModel.fromJson(Map<String, dynamic> json) => FooterStringsModel(
    copyright: json['copyright'] as String? ?? '',
  );
}

typedef FooterStrings = FooterStringsModel;

class ActionStringsModel {
  final String playStore;
  final String appStore;
  final String website;
  final String codeRepo;
  final String liveDemo;
  final String downloadApk;
  final String downloadCv;
  final String viewProject;

  const ActionStringsModel({
    required this.playStore,
    required this.appStore,
    required this.website,
    required this.codeRepo,
    required this.liveDemo,
    required this.downloadApk,
    required this.downloadCv,
    required this.viewProject,
  });

  factory ActionStringsModel.fromJson(Map<String, dynamic> json) => ActionStringsModel(
    playStore: json['playStore'] as String? ?? 'Google Play',
    appStore: json['appStore'] as String? ?? 'App Store',
    website: json['website'] as String? ?? 'Website',
    codeRepo: json['codeRepo'] as String? ?? 'GitHub Repo',
    liveDemo: json['liveDemo'] as String? ?? 'Live Demo',
    downloadApk: json['downloadApk'] as String? ?? 'Download APK',
    downloadCv: json['downloadCv'] as String? ?? 'Download CV',
    viewProject: json['viewProject'] as String? ?? 'View Project',
  );
}

typedef ActionStrings = ActionStringsModel;

class ContactStringsModel {
  final String subtitle;
  final String emailPlaceholder;
  final String messagePlaceholder;
  final String sendWhatsAppButton;
  final String sendEmailButton;
  final String sendButton;
  final String validationError;
  final String emailValidationError;
  final String directWhatsApp;

  const ContactStringsModel({
    required this.subtitle,
    required this.emailPlaceholder,
    required this.messagePlaceholder,
    required this.sendWhatsAppButton,
    required this.sendEmailButton,
    required this.sendButton,
    required this.validationError,
    required this.emailValidationError,
    required this.directWhatsApp,
  });

  factory ContactStringsModel.fromJson(Map<String, dynamic> json) {
    final sendWa = json['sendWhatsAppButton'] as String? ??
        json['sendButton'] as String? ??
        'Send via WhatsApp';
    return ContactStringsModel(
      subtitle: json['subtitle'] as String? ?? '',
      emailPlaceholder: json['emailPlaceholder'] as String? ??
          'Your email (required to send email)...',
      messagePlaceholder: json['messagePlaceholder'] as String? ??
          'Write your message here...',
      sendWhatsAppButton: sendWa,
      sendEmailButton: json['sendEmailButton'] as String? ?? 'Send via Email',
      sendButton: sendWa,
      validationError: json['validationError'] as String? ??
          'Please write a message before sending.',
      emailValidationError: json['emailValidationError'] as String? ??
          'Please enter your email address to send an email.',
      directWhatsApp: json['directWhatsApp'] as String? ??
          'Direct WhatsApp: +967 734 633 105',
    );
  }
}

typedef ContactStrings = ContactStringsModel;
