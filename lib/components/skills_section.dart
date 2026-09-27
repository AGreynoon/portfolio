import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../models/app_strings_model.dart';
import '../data/portfolio_data.dart';

class SkillsSection extends StatelessComponent {
  final AppLocaleEnum locale;

  const SkillsSection({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final strings = AppStringsModel.of(locale);

    return section(classes: 'section-wrapper', [
      h2(classes: 'section-title', [
        .text(strings.sections.skillsTitle),
      ]),
      div(classes: 'skills-container', [
        div(classes: 'skill-cloud', [
          for (final skill in PortfolioData.skills)
            span(classes: 'skill-tag', [
              .text(skill),
            ]),
        ]),
      ]),
    ]);
  }
}
