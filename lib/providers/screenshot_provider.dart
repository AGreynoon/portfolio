import 'package:jaspr_riverpod/jaspr_riverpod.dart';

class ActiveScreenshotNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void open(String imageUrl) {
    state = imageUrl;
  }

  void close() {
    state = null;
  }
}

final activeScreenshotProvider =
    NotifierProvider<ActiveScreenshotNotifier, String?>(
        ActiveScreenshotNotifier.new);
