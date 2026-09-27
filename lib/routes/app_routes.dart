import 'package:jaspr_router/jaspr_router.dart';

import '../data/portfolio_data.dart';
import '../pages/home_page.dart';
import '../pages/project_detail_page.dart';

/// Centralized route paths and route declarations for the portfolio application.
abstract final class AppRoutes {
  static const String home = '/';
  static const String projectPrefix = '/project/';

  static String project(String id) => '/project/$id';

  /// Complete list of declarative Jaspr [Route] objects.
  static List<Route> get routes => [
    Route(
      path: home,
      title: 'Ahmed Ameen Greynoon | Portfolio',
      builder: (context, state) => const HomePage(),
    ),
    for (final project in PortfolioData.projects)
      Route(
        path: AppRoutes.project(project.id),
        title: '${project.title.en} | Ahmed Ameen Greynoon',
        builder: (context, state) => ProjectDetailPage(
          id: project.id,
        ),
      ),
  ];
}
