import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../data/portfolio_data.dart';

class ProfileHeader extends StatelessComponent {
  final AppLocaleEnum locale;

  const ProfileHeader({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return header(classes: 'hero-section', [
      div(classes: 'hero-header-row', [
        div(classes: 'profile-avatar-wrapper', [
          img(
            src: PortfolioData.avatarUrl,
            alt: PortfolioData.name.get(locale),
            width: 128,
            height: 128,
            classes: 'profile-avatar',
          ),
        ]),
        div(classes: 'hero-meta', [
          h1(classes: 'hero-name', [
            .text(PortfolioData.name.get(locale)),
          ]),
          span(classes: 'hero-title', [
            .text(PortfolioData.title.get(locale)),
          ]),
        ]),
      ]),
      p(classes: 'hero-bio', [
        .text(PortfolioData.bio.get(locale)),
      ]),
    ]);
  }
}
