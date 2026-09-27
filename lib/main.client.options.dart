// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';

import 'package:portfolio/pages/home_page.dart' deferred as _home_page;
import 'package:portfolio/pages/project_detail_page.dart'
    deferred as _project_detail_page;

/// Default [ClientOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.client.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultClientOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ClientOptions get defaultClientOptions => ClientOptions(
  clients: {
    'home_page': ClientLoader(
      (p) => _home_page.HomePage(),
      loader: _home_page.loadLibrary,
    ),
    'project_detail_page': ClientLoader(
      (p) => _project_detail_page.ProjectDetailPage(id: p['id'] as String),
      loader: _project_detail_page.loadLibrary,
    ),
  },
);
