import 'localized_text_model.dart';

class SkillCategoryModel {
  final LocalizedTextModel title;
  final List<String> skills;

  const SkillCategoryModel({
    required this.title,
    required this.skills,
  });
}

typedef SkillCategory = SkillCategoryModel;
