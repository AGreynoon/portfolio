import 'raw/portfolio_data_raw.dart';
import '../models/education_model.dart';
import '../models/experience_model.dart';
import '../models/localized_text_model.dart';
import '../models/project_model.dart';

class PortfolioData {
  static final Map<String, dynamic> _en = PortfolioDataRaw.en;
  static final Map<String, dynamic> _ar = PortfolioDataRaw.ar;

  static final LocalizedTextModel name = LocalizedTextModel(
    en: _en['name'] as String,
    ar: _ar['name'] as String,
  );

  static final LocalizedTextModel title = LocalizedTextModel(
    en: _en['title'] as String,
    ar: _ar['title'] as String,
  );

  static final LocalizedTextModel bio = LocalizedTextModel(
    en: _en['bio'] as String,
    ar: _ar['bio'] as String,
  );

  static final String avatarUrl = _en['avatarUrl'] as String;

  static final List<({LocalizedTextModel label, String url, String icon})> socialLinks = [
    for (int i = 0; i < (_en['socialLinks'] as List).length; i++)
      (
        label: LocalizedTextModel(
          en: (_en['socialLinks'] as List)[i]['label'] as String,
          ar: (_ar['socialLinks'] as List)[i]['label'] as String,
        ),
        url: (_en['socialLinks'] as List)[i]['url'] as String,
        icon: (_en['socialLinks'] as List)[i]['icon'] as String,
      ),
  ];

  static final List<CompanyExperienceModel> companyExperiences = _buildCompanyExperiences();

  static final List<EducationModel> education = _buildEducation();

  static final List<String> skills = List<String>.from(_en['skills'] as List);

  static final List<ProjectModel> projects = _buildProjects();

  static ProjectModel? getProjectById(String id) {
    try {
      return projects.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }

  static List<CompanyExperienceModel> _buildCompanyExperiences() {
    final enList = _en['companyExperiences'] as List;
    final arList = _ar['companyExperiences'] as List;

    return [
      for (int i = 0; i < enList.length; i++) ...[
        () {
          final enCompany = enList[i] as Map<String, dynamic>;
          final arCompany =
              (arList.firstWhere(
                    (c) => c['id'] == enCompany['id'],
                    orElse: () => enCompany,
                  )
                  as Map<String, dynamic>);

          final enPositions = enCompany['positions'] as List;
          final arPositions = arCompany['positions'] as List;

          final positions = [
            for (int p = 0; p < enPositions.length; p++) ...[
              () {
                final enPos = enPositions[p] as Map<String, dynamic>;
                final arPos = arPositions.length > p ? arPositions[p] as Map<String, dynamic> : enPos;

                final enAchievements = (enPos['achievements'] as List).cast<String>();
                final arAchievements = (arPos['achievements'] as List).cast<String>();

                return ExperiencePositionModel(
                  role: LocalizedTextModel(
                    en: enPos['role'] as String,
                    ar: arPos['role'] as String,
                  ),
                  period: LocalizedTextModel(
                    en: enPos['period'] as String,
                    ar: arPos['period'] as String,
                  ),
                  employmentType: LocalizedTextModel(
                    en: enPos['employmentType'] as String,
                    ar: arPos['employmentType'] as String,
                  ),
                  achievements: [
                    for (int a = 0; a < enAchievements.length; a++)
                      LocalizedTextModel(
                        en: enAchievements[a],
                        ar: arAchievements.length > a ? arAchievements[a] : enAchievements[a],
                      ),
                  ],
                );
              }(),
            ],
          ];

          return CompanyExperienceModel(
            id: enCompany['id'] as String,
            company: LocalizedTextModel(
              en: enCompany['company'] as String,
              ar: arCompany['company'] as String,
            ),
            positions: positions,
          );
        }(),
      ],
    ];
  }

  static List<ProjectModel> _buildProjects() {
    final enList = _en['projects'] as List;
    final arList = _ar['projects'] as List;

    return [
      for (final enProject in enList) ...[
        () {
          final pMap = enProject as Map<String, dynamic>;
          final arProject =
              (arList.firstWhere(
                    (p) => p['id'] == pMap['id'],
                    orElse: () => pMap,
                  )
                  as Map<String, dynamic>);

          final enContribs = (pMap['roleContributions'] as List?)?.cast<String>() ?? [];
          final arContribs = (arProject['roleContributions'] as List?)?.cast<String>() ?? [];

          return ProjectModel(
            id: pMap['id'] as String,
            title: LocalizedTextModel(
              en: pMap['title'] as String,
              ar: arProject['title'] as String,
            ),
            tagline: LocalizedTextModel(
              en: pMap['tagline'] as String,
              ar: arProject['tagline'] as String,
            ),
            shortDescription: LocalizedTextModel(
              en: pMap['shortDescription'] as String,
              ar: arProject['shortDescription'] as String,
            ),
            myRole: pMap['myRole'] != null
                ? LocalizedTextModel(
                    en: pMap['myRole'] as String,
                    ar: (arProject['myRole'] ?? pMap['myRole']) as String,
                  )
                : null,
            roleContributions: [
              for (int c = 0; c < enContribs.length; c++)
                LocalizedTextModel(
                  en: enContribs[c],
                  ar: arContribs.length > c ? arContribs[c] : enContribs[c],
                ),
            ],
            coverImage: pMap['coverImage'] as String?,
            logo: pMap['logo'] as String?,
            screenshots: (pMap['screenshots'] as List?)?.cast<String>() ?? const [],
            tags: (pMap['tags'] as List).cast<String>(),
            playStoreUrl: pMap['playStoreUrl'] as String?,
            appStoreUrl: pMap['appStoreUrl'] as String?,
            websiteUrl: pMap['websiteUrl'] as String?,
            repoUrl: pMap['repoUrl'] as String?,
            liveUrl: pMap['liveUrl'] as String?,
            apkUrl: pMap['apkUrl'] as String?,
          );
        }(),
      ],
    ];
  }

  static List<EducationModel> _buildEducation() {
    final enList = (_en['education'] as List?) ?? [];
    final arList = (_ar['education'] as List?) ?? [];

    return [
      for (int i = 0; i < enList.length; i++) ...[
        () {
          final enEdu = enList[i] as Map<String, dynamic>;
          final arEdu = (arList.firstWhere(
            (e) => e['id'] == enEdu['id'],
            orElse: () => enEdu,
          ) as Map<String, dynamic>);

          return EducationModel(
            id: enEdu['id'] as String,
            degree: LocalizedTextModel(
              en: enEdu['degree'] as String,
              ar: (arEdu['degree'] ?? enEdu['degree']) as String,
            ),
            institution: LocalizedTextModel(
              en: enEdu['institution'] as String,
              ar: (arEdu['institution'] ?? enEdu['institution']) as String,
            ),
            period: LocalizedTextModel(
              en: enEdu['period'] as String,
              ar: (arEdu['period'] ?? enEdu['period']) as String,
            ),
            location: LocalizedTextModel(
              en: enEdu['location'] as String,
              ar: (arEdu['location'] ?? enEdu['location']) as String,
            ),
          );
        }(),
      ],
    ];
  }
}
