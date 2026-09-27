import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:universal_web/web.dart' as web;

import '../components/footer.dart';
import '../components/theme_language_bar.dart';
import '../helpers/icon_helper.dart';
import '../models/app_strings_model.dart';
import '../data/portfolio_data.dart';
import '../providers/locale_provider.dart';
import '../providers/screenshot_provider.dart';
import '../routes/app_router.dart';
import '../routes/app_routes.dart';

@client
class ProjectDetailPage extends StatelessComponent {
  final String id;

  const ProjectDetailPage({
    required this.id,
    super.key,
  });

  void _onBackClick(BuildContext context, web.Event e) {
    AppRouter.goToHome(context, e);
  }

  @override
  Component build(BuildContext context) {
    final locale = context.watch(localeProvider);
    final activeScreenshot = context.watch(activeScreenshotProvider);
    final project = PortfolioData.getProjectById(id);
    final strings = AppStringsModel.of(locale);

    if (project == null) {
      return div(
        classes: 'app-container',
        attributes: {
          'dir': locale.dir,
          'lang': locale.code,
        },
        [
          div(classes: 'detail-nav-row', [
            a(
              href: AppRoutes.home,
              classes: 'back-btn',
              events: {
                'click': (web.Event e) => _onBackClick(context, e),
              },
              [.text(strings.detail.backToHome)],
            ),
            const ThemeLanguageBar(),
          ]),
          div(classes: 'hero-section', [
            h1(classes: 'hero-name', [
              .text(strings.detail.projectNotFound),
            ]),
            p(classes: 'hero-bio', [
              .text(strings.detail.projectNotFoundDesc),
            ]),
          ]),
          Footer(locale: locale),
        ],
      );
    }

    return div(
      classes: 'app-container',
      attributes: {
        'dir': locale.dir,
        'lang': locale.code,
      },
      [
        // Top Navigation Row
        div(classes: 'detail-nav-row', [
          a(
            href: AppRoutes.home,
            classes: 'back-btn',
            events: {
              'click': (web.Event e) => _onBackClick(context, e),
            },
            [.text(strings.detail.backToHome)],
          ),
          const ThemeLanguageBar(),
        ]),

        // Header: Logo, Title, Tagline, Action Links
        div(classes: 'detail-header', [
          div(classes: 'detail-header-identity', [
            if (project.logo != null)
              img(
                src: project.logo!,
                alt: '${project.title.get(locale)} logo',
                classes: 'detail-app-logo',
              ),
            div(classes: 'detail-header-titles', [
              h1(classes: 'detail-title', [
                .text(project.title.get(locale)),
              ]),
              p(classes: 'detail-tagline', [
                .text(project.tagline.get(locale)),
              ]),
            ]),
          ]),

          div(classes: 'detail-actions-row', [
            if (project.playStoreUrl != null)
              a(
                href: project.playStoreUrl!,
                target: Target.blank,
                classes: 'action-btn',
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
                [
                  AppIconsHelper.projectLink('live'),
                  .text(strings.actions.liveDemo),
                ],
              ),
          ]),
        ]),

        // Visual Showcase: Store Screenshots Horizontal ListView or Banner Image
        if (project.screenshots.isNotEmpty)
          div(classes: 'detail-section', [
            h2(classes: 'detail-section-title', [
              .text(strings.detail.screenshotGallery),
            ]),
            div(classes: 'detail-screenshots-scroll', [
              for (int i = 0; i < project.screenshots.length; i++)
                div(
                  classes: 'detail-screenshot-item',
                  events: {
                    'click': (web.Event e) {
                      context.read(activeScreenshotProvider.notifier).open(project.screenshots[i]);
                    },
                  },
                  [
                    img(
                      src: project.screenshots[i],
                      alt: '${project.title.get(locale)} screenshot ${i + 1}',
                      classes: 'detail-screenshot-img',
                      attributes: {'loading': 'lazy'},
                    ),
                  ],
                ),
            ]),
          ])
        else if (project.coverImage != null)
          div(classes: 'detail-banner', [
            img(
              src: project.coverImage!,
              alt: project.title.get(locale),
            ),
          ]),

        // Description Section
        div(classes: 'detail-section', [
          h2(classes: 'detail-section-title', [
            .text(strings.detail.aboutProject),
          ]),
          p(classes: 'detail-section-text', [
            .text(project.shortDescription.get(locale)),
          ]),
        ]),

        // My Role Section
        if (project.myRole != null || project.roleContributions.isNotEmpty)
          div(classes: 'detail-section', [
            h2(classes: 'detail-section-title', [
              .text(strings.detail.myRole),
            ]),
            if (project.myRole != null)
              p(classes: 'detail-section-text', [
                .text(project.myRole!.get(locale)),
              ]),
            if (project.roleContributions.isNotEmpty)
              ul(classes: 'detail-role-list', [
                for (final item in project.roleContributions)
                  li([
                    .text(item.get(locale)),
                  ]),
              ]),
          ]),

        // Tech Stack Cloud (Tags)
        if (project.tags.isNotEmpty)
          div(classes: 'detail-section', [
            h2(classes: 'detail-section-title', [
              .text(strings.detail.technologiesUsed),
            ]),
            div(classes: 'detail-tags-cloud', [
              for (final tag in project.tags)
                span(classes: 'skill-tag', [
                  .text(tag),
                ]),
            ]),
          ]),

        Footer(locale: locale),

        // Lightbox Modal for Screenshot Preview
        if (activeScreenshot != null)
          div(
            classes: 'lightbox-overlay',
            events: {
              'click': (web.Event e) {
                context.read(activeScreenshotProvider.notifier).close();
              },
            },
            [
              div(
                classes: 'lightbox-content',
                events: {
                  'click': (web.Event e) {
                    e.stopPropagation();
                  },
                },
                [
                  button(
                    classes: 'lightbox-close-btn',
                    onClick: () {
                      context.read(activeScreenshotProvider.notifier).close();
                    },
                    [.text('✕')],
                  ),
                  img(
                    src: activeScreenshot,
                    alt: 'Screenshot Preview',
                    classes: 'lightbox-img',
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}
