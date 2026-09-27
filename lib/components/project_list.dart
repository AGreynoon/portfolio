import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../models/app_strings_model.dart';
import '../data/portfolio_data.dart';
import 'project_card.dart';

class ProjectList extends StatelessComponent {
  final AppLocaleEnum locale;

  const ProjectList({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final strings = AppStringsModel.of(locale);

    return section(classes: 'section-wrapper', [
      h2(classes: 'section-title', [
        .text(strings.sections.projectsTitle),
      ]),
      div(classes: 'projects-grid', [
        for (final project in PortfolioData.projects)
          ProjectCard(
            key: ValueKey(project.id),
            project: project,
            locale: locale,
          ),
      ]),
    ]);
  }
}
