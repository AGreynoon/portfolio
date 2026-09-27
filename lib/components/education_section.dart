import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../helpers/icon_helper.dart';
import '../models/app_strings_model.dart';
import '../data/portfolio_data.dart';

/// Renders the academic qualifications and degrees section.
class EducationSection extends StatelessComponent {
  final AppLocaleEnum locale;

  const EducationSection({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final strings = AppStringsModel.of(locale);

    return section(classes: 'section-wrapper', [
      h2(classes: 'section-title', [
        .text(strings.sections.educationTitle),
      ]),
      div(classes: 'education-list', [
        for (final item in PortfolioData.education)
          div(classes: 'education-card', [
            div(classes: 'education-card-header', [
              div(classes: 'education-degree-group', [
                span(classes: 'education-icon', [
                  AppIconsHelper.education(),
                ]),
                div(classes: 'education-title-group', [
                  h3(classes: 'education-degree', [
                    .text(item.degree.get(locale)),
                  ]),
                  span(classes: 'education-institution', [
                    .text(item.institution.get(locale)),
                  ]),
                ]),
              ]),
              div(classes: 'education-meta', [
                span(classes: 'education-period-badge', [
                  .text(item.period.get(locale)),
                ]),
                span(classes: 'education-location-badge', [
                  .text(item.location.get(locale)),
                ]),
              ]),
            ]),
          ]),
      ]),
    ]);
  }
}
