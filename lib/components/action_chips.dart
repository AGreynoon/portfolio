import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../helpers/icon_helper.dart';
import '../data/portfolio_data.dart';

class ActionChips extends StatelessComponent {
  final AppLocaleEnum locale;

  const ActionChips({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    return div(classes: 'action-chips-container', [
      for (final link in PortfolioData.socialLinks)
        a(
          href: link.url,
          target: link.url.startsWith('http') ? Target.blank : Target.self,
          classes: link.icon == 'download' ? 'action-chip action-chip-primary' : 'action-chip',
          [
            AppIconsHelper.social(link.icon),
            .text(link.label.get(locale)),
          ],
        ),
    ]);
  }
}
