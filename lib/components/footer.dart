import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../enums/app_locale_enum.dart';
import '../models/app_strings_model.dart';

class Footer extends StatelessComponent {
  final AppLocaleEnum locale;

  const Footer({
    required this.locale,
    super.key,
  });

  @override
  Component build(BuildContext context) {
    final strings = AppStringsModel.of(locale);

    return footer(classes: 'app-footer', [
      p([.text(strings.footer.copyright)]),
    ]);
  }
}
