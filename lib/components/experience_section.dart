import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../helpers/icon_helper.dart';
import '../models/app_strings_model.dart';
import '../data/portfolio_data.dart';

class ExperienceSection extends StatelessComponent {
  final AppLocaleEnum locale;

  const ExperienceSection({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final strings = AppStringsModel.of(locale);

    return section(classes: 'section-wrapper', [
      h2(classes: 'section-title', [
        .text(strings.sections.experienceTitle),
      ]),
      div(classes: 'experience-companies-list', [
        for (final companyExp in PortfolioData.companyExperiences)
          div(classes: 'company-card', [
            div(classes: 'company-card-header', [
              div(classes: 'company-name-group', [
                span(classes: 'company-icon', [
                  AppIconsHelper.company(),
                ]),
                h3(classes: 'company-title', [
                  .text(companyExp.company.get(locale)),
                ]),
              ]),
            ]),
            div(
              classes: 'company-positions-list ${companyExp.positions.length > 1 ? 'has-multiple-positions' : ''}',
              [
                for (final position in companyExp.positions)
                  div(classes: 'position-item', [
                    div(classes: 'position-header', [
                      span(classes: 'position-role', [
                        .text(position.role.get(locale)),
                      ]),
                      div(classes: 'position-meta', [
                        span(classes: 'position-period', [
                          .text(position.period.get(locale)),
                        ]),
                        span(
                          classes:
                              'position-type-badge ${position.employmentType.en.toLowerCase().contains("part") ? "type-part-time" : "type-full-time"}',
                          [
                            .text(position.employmentType.get(locale)),
                          ],
                        ),
                      ]),
                    ]),
                    ul(classes: 'position-achievements', [
                      for (final item in position.achievements)
                        li([
                          .text(item.get(locale)),
                        ]),
                    ]),
                  ]),
              ],
            ),
          ]),
      ]),
    ]);
  }
}
