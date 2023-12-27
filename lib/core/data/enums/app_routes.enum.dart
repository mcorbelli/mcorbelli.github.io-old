import 'package:portfolio_web/core/localizations/translations.g.dart';

const _navKey = 'ui_components.app_bar.navigations';

enum AppRoutes {
  homepage(
    routeName: 'homepage',
    routePath: '/',
    titleKey: '$_navKey.homepage',
  ),
  contacts(
    routeName: 'contacts',
    routePath: '/contacts',
    titleKey: '$_navKey.contacts',
  ),
  notFound(
    routeName: 'not-found',
    routePath: '/not-found',
    titleKey: '$_navKey.not-found',
  );

  const AppRoutes({
    required this.routeName,
    required this.routePath,
    required this.titleKey,
  });

  final String routeName;
  final String routePath;
  final String titleKey;

  String get title {
    return t[titleKey];
  }
}
