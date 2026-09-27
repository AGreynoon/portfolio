import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:universal_web/web.dart' as web;

/// Helper utilities for safe client-side SPA routing and web click events.
class NavigationHelper {
  const NavigationHelper._();

  /// Determines if a mouse event represents a modified click (Ctrl, Cmd, Shift, Alt)
  /// or a non-primary button click (middle-click), which should be handled natively by the browser.
  static bool isModifiedClick(web.Event e) {
    if (kIsWeb) {
      try {
        final mouseEvent = e as web.MouseEvent;
        if (mouseEvent.button != 0 ||
            mouseEvent.ctrlKey ||
            mouseEvent.metaKey ||
            mouseEvent.shiftKey ||
            mouseEvent.altKey) {
          return true;
        }
      } catch (_) {}
    }
    return false;
  }

  /// Performs SPA navigation to [path], respecting modifier keys for opening new tabs/windows.
  static void navigate(BuildContext context, web.Event e, String path) {
    if (isModifiedClick(e)) {
      return;
    }

    final router = Router.maybeOf(context);
    if (router != null) {
      e.preventDefault();
      router.push(path);
    } else if (kIsWeb) {
      if (e.currentTarget != null && e.target == e.currentTarget) {
        web.window.location.href = path;
      }
    }
  }
}
