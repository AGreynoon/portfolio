import 'localized_text_model.dart';

class ProjectModel {
  final String id;
  final LocalizedTextModel title;
  final LocalizedTextModel tagline;
  final LocalizedTextModel shortDescription;
  final LocalizedTextModel? myRole;
  final List<LocalizedTextModel> roleContributions;
  final String? coverImage;
  final String? logo;
  final List<String> screenshots;
  final List<String> tags;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String? websiteUrl;
  final String? repoUrl;
  final String? liveUrl;
  final String? apkUrl;

  const ProjectModel({
    required this.id,
    required this.title,
    required this.tagline,
    required this.shortDescription,
    this.myRole,
    this.roleContributions = const [],
    this.coverImage,
    this.logo,
    this.screenshots = const [],
    required this.tags,
    this.playStoreUrl,
    this.appStoreUrl,
    this.websiteUrl,
    this.repoUrl,
    this.liveUrl,
    this.apkUrl,
  });
}

typedef Project = ProjectModel;
