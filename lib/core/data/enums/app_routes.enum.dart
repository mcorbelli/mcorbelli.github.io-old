const _navKey = 'homepage.app_bar.navigations';

enum AppRoutes {
  homepage(
    routeName: 'homepage',
    routePath: '/',
    localeKey: '$_navKey.homepage',
  ),
  contacts(
    routeName: 'contacts',
    routePath: '/contacts',
    localeKey: '$_navKey.contacts',
  ),
  notFound(
    routeName: 'not_found',
    routePath: '/not-found',
    localeKey: '$_navKey.not_found',
  );

  const AppRoutes({
    required this.routeName,
    required this.routePath,
    required this.localeKey,
  });

  final String routeName;
  final String routePath;
  final String localeKey;
}
