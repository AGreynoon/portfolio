import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import '../enums/app_locale_enum.dart';
import '../helpers/icon_helper.dart';
import '../models/app_strings_model.dart';
import '../models/project_model.dart';
import '../routes/app_router.dart';
import '../routes/app_routes.dart';

class ProjectCard extends StatelessComponent {
  final ProjectModel project;
  final AppLocaleEnum locale;

  const ProjectCard({
    required this.project,
    required this.locale,
    super.key,
  });

  void _onCardClick(BuildContext context, web.Event e) {
    AppRouter.goToProject(context, project.id, e);
  }

  @override
  Component build(BuildContext context) {
    final projectUrl = AppRoutes.project(project.id);
    final strings = AppStringsModel.of(locale);

    return div(
      classes: 'project-card',
      events: {
        'click': (web.Event e) => _onCardClick(context, e),
      },
      [
        // Primary overlay link for the entire card (enables right-click, middle-click, new tab, and click)
        a(
          href: projectUrl,
          classes: 'project-card-overlay',
          attributes: {
            'aria-label': project.title.get(locale),
            'tabindex': '-1',
          },
          events: {
            'click': (web.Event e) => _onCardClick(context, e),
          },
          [],
        ),

        // Top Visual Showcase: Horizontal Screenshots ListView or Cover Image
        if (project.screenshots.isNotEmpty)
          div(classes: 'project-screenshots-wrapper', [
            div(classes: 'project-screenshots-scroll', [
              for (int i = 0; i < project.screenshots.length; i++)
                a(
                  href: projectUrl,
                  classes: 'project-screenshot-item',
                  attributes: {
                    'aria-label':
                        '${project.title.get(locale)} screenshot ${i + 1}',
                    'tabindex': '-1',
                  },
                  events: {
                    'click': (web.Event e) => _onCardClick(context, e),
                  },
                  [
                    img(
                      src: project.screenshots[i],
                      alt: '${project.title.get(locale)} screenshot ${i + 1}',
                      classes: 'project-screenshot-img',
                      attributes: {'loading': 'lazy'},
                    ),
                  ],
                ),
            ]),
          ])
        else if (project.coverImage != null)
          a(
            href: projectUrl,
            classes: 'project-cover-container',
            attributes: {
              'aria-label': project.title.get(locale),
              'tabindex': '-1',
            },
            events: {
              'click': (web.Event e) => _onCardClick(context, e),
            },
            [
              img(
                src: project.coverImage!,
                alt: project.title.get(locale),
                classes: 'project-cover',
              ),
            ],
          ),

        // Project Info
        div(classes: 'project-info', [
          // Header with Logo, Title, and Tagline
          div(classes: 'project-header-row', [
            if (project.logo != null)
              img(
                src: project.logo!,
                alt: '${project.title.get(locale)} logo',
                classes: 'project-app-logo',
              ),
            div(classes: 'project-header-text', [
              h3(classes: 'project-title', [
                a(
                  href: projectUrl,
                  classes: 'project-title-link',
                  events: {
                    'click': (web.Event e) => _onCardClick(context, e),
                  },
                  [
                    .text(project.title.get(locale)),
                  ],
                ),
              ]),
              p(classes: 'project-tagline', [
                .text(project.tagline.get(locale)),
              ]),
            ]),
          ]),

          p(classes: 'project-description', [
            .text(project.shortDescription.get(locale)),
          ]),

          // Action Buttons (Independent with stopPropagation)
          if (project.playStoreUrl != null ||
              project.appStoreUrl != null ||
              project.websiteUrl != null ||
              project.apkUrl != null ||
              project.repoUrl != null ||
              project.liveUrl != null)
            div(classes: 'project-actions', [
              if (project.playStoreUrl != null)
                a(
                  href: project.playStoreUrl!,
                  target: Target.blank,
                  classes: 'action-btn',
                  events: {
                    'click': (web.Event e) {
                      e.stopPropagation();
                    },
                  },
                  [
                    AppIconsHelper.projectLink('play-store'),
                    .text(strings.actions.playStore),
                  ],
                ),
              if (project.appStoreUrl != null)
                a(
                  href: project.appStoreUrl!,
                  target: Target.blank,
                  classes: 'action-btn',
                  events: {
                    'click': (web.Event e) {
                      e.stopPropagation();
                    },
                  },
                  [
                    AppIconsHelper.projectLink('app-store'),
                    .text(strings.actions.appStore),
                  ],
                ),
              if (project.websiteUrl != null)
                a(
                  href: project.websiteUrl!,
                  target: Target.blank,
                  classes: 'action-btn',
                  events: {
                    'click': (web.Event e) {
                      e.stopPropagation();
                    },
                  },
                  [
                    AppIconsHelper.projectLink('website'),
                    .text(strings.actions.website),
                  ],
                ),
              if (project.apkUrl != null)
                a(
                  href: project.apkUrl!,
                  target: Target.blank,
                  classes: 'action-btn',
                  events: {
                    'click': (web.Event e) {
                      e.stopPropagation();
                    },
                  },
                  [
                    AppIconsHelper.projectLink('apk'),
                    .text(strings.actions.downloadApk),
                  ],
                ),
              if (project.repoUrl != null)
                a(
                  href: project.repoUrl!,
                  target: Target.blank,
                  classes: 'action-btn',
                  events: {
                    'click': (web.Event e) {
                      e.stopPropagation();
                    },
                  },
                  [
                    AppIconsHelper.projectLink('code'),
                    .text(strings.actions.codeRepo),
                  ],
                ),
              if (project.liveUrl != null)
                a(
                  href: project.liveUrl!,
                  target: Target.blank,
                  classes: 'action-btn',
                  events: {
                    'click': (web.Event e) {
                      e.stopPropagation();
                    },
                  },
                  [
                    AppIconsHelper.projectLink('live'),
                    .text(strings.actions.liveDemo),
                  ],
                ),
            ]),

          // Center-bottom link to project details
          div(classes: 'project-card-footer', [
            a(
              href: projectUrl,
              classes: 'project-details-link',
              events: {
                'click': (web.Event e) => _onCardClick(context, e),
              },
              [
                span([
                  .text(strings.actions.viewProject),
                ]),
                AppIconsHelper.arrow(
                    isRtl: locale.isArabic, classes: 'project-details-icon'),
              ],
            ),
          ]),
        ]),
      ],
    );
  }
}
