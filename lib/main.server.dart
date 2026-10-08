/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    title: 'Ahmed Ameen Greynoon | Portfolio',
    head: [
      meta(name: 'viewport', content: 'width=device-width, initial-scale=1.0, viewport-fit=cover'),
      meta(name: 'theme-color', content: '#0a0a0a'),
      .element(tag: 'base', attributes: {'href': '/'}),
      link(rel: 'stylesheet', href: 'themes/styles.css'),
    ],
    body: const ProviderScope(
      child: App(),
    ),
  ));
}
