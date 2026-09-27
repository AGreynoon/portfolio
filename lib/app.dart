import 'package:jaspr/jaspr.dart';

import 'routes/app_router.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return AppRouter.buildRouter();
  }
}
