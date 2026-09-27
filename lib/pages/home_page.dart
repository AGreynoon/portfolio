import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/action_chips.dart';
import '../components/contact_section.dart';
import '../components/education_section.dart';
import '../components/experience_section.dart';
import '../components/footer.dart';
import '../components/profile_header.dart';
import '../components/project_list.dart';
import '../components/skills_section.dart';
import '../components/theme_language_bar.dart';
import '../providers/locale_provider.dart';

@client
class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    final locale = context.watch(localeProvider);

    return div(
      classes: 'app-container',
      attributes: {
        'dir': locale.dir,
        'lang': locale.code,
      },
      [
        const ThemeLanguageBar(),
        ProfileHeader(locale: locale),
        ActionChips(locale: locale),
        ExperienceSection(locale: locale),
        EducationSection(locale: locale),
        SkillsSection(locale: locale),
        ProjectList(locale: locale),
        ContactSection(locale: locale),
        Footer(locale: locale),
      ],
    );
  }
}
