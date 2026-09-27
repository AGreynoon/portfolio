// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:portfolio/pages/home_page.dart' as _home_page;
import 'package:portfolio/pages/project_detail_page.dart'
    as _project_detail_page;
import 'package:portfolio/themes/app_theme.dart' as _app_theme;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _home_page.HomePage: ClientTarget<_home_page.HomePage>('home_page'),
    _project_detail_page.ProjectDetailPage:
        ClientTarget<_project_detail_page.ProjectDetailPage>(
          'project_detail_page',
          params: __project_detail_pageProjectDetailPage,
        ),
  },
  styles: () => [..._app_theme.styles],
);

Map<String, Object?> __project_detail_pageProjectDetailPage(
  _project_detail_page.ProjectDetailPage c,
) => {'id': c.id};
