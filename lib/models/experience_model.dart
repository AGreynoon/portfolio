import 'localized_text_model.dart';

class CompanyExperienceModel {
  final String id;
  final LocalizedTextModel company;
  final List<ExperiencePositionModel> positions;

  const CompanyExperienceModel({
    required this.id,
    required this.company,
    required this.positions,
  });
}

typedef CompanyExperience = CompanyExperienceModel;

class ExperiencePositionModel {
  final LocalizedTextModel role;
  final LocalizedTextModel period;
  final LocalizedTextModel employmentType;
  final List<LocalizedTextModel> achievements;

  const ExperiencePositionModel({
    required this.role,
    required this.period,
    required this.employmentType,
    required this.achievements,
  });
}

typedef ExperiencePosition = ExperiencePositionModel;

/// Backwards compatibility if needed
class ExperienceModel {
  final String id;
  final LocalizedTextModel role;
  final LocalizedTextModel company;
  final LocalizedTextModel period;
  final LocalizedTextModel? description;
  final List<LocalizedTextModel> achievements;

  const ExperienceModel({
    required this.id,
    required this.role,
    required this.company,
    required this.period,
    this.description,
    required this.achievements,
  });
}

typedef Experience = ExperienceModel;
