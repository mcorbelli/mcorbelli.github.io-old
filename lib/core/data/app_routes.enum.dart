enum AppRoutes {
  homepage(
    routeName: 'homepage',
    routePath: '/',
  ),
  contacts(
    routeName: 'contacts',
    routePath: '/contacts',
  ),
  tattoo(
    routeName: 'tattoo',
    routePath: '/tattoo',
  ),
  notFound(
    routeName: 'not_found',
    routePath: '/not-found',
  );

  const AppRoutes({
    required this.routeName,
    required this.routePath,
  });

  final String routeName;
  final String routePath;
}
