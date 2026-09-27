import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:universal_web/web.dart' as web;

import '../helpers/navigation_helper.dart';
import 'app_routes.dart';

/// Navigation router controller providing helper actions for programmatic SPA navigation.
abstract final class AppRouter {
  /// Builds the main router component using declared routes.
  static Component buildRouter() => Router(routes: AppRoutes.routes);

  /// Navigates to the home page (`/`), respecting browser native clicks (middle click, Cmd/Ctrl).
  static void goToHome(BuildContext context, [web.Event? event]) {
    if (event != null) {
      NavigationHelper.navigate(context, event, AppRoutes.home);
    } else {
      Router.maybeOf(context)?.push(AppRoutes.home);
    }
  }

  /// Navigates to a project detail page (`/project/:id`), respecting browser native clicks.
  static void goToProject(BuildContext context, String projectId, [web.Event? event]) {
    final path = AppRoutes.project(projectId);
    if (event != null) {
      NavigationHelper.navigate(context, event, path);
    } else {
      Router.maybeOf(context)?.push(path);
    }
  }
}
