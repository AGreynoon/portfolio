import 'localized_text_model.dart';

/// Strongly-typed model representing an academic educational qualification.
class EducationModel {
  final String id;
  final LocalizedTextModel degree;
  final LocalizedTextModel institution;
  final LocalizedTextModel period;
  final LocalizedTextModel location;

  const EducationModel({
    required this.id,
    required this.degree,
    required this.institution,
    required this.period,
    required this.location,
  });
}

typedef Education = EducationModel;
