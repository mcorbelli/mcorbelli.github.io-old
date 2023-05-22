enum AppRoutes {
  homepage(
    routeName: 'homepage',
    routePath: '/',
  ),
  contacts(
    routeName: 'contacts',
    routePath: '/contacts',
  );

  const AppRoutes({
    required this.routeName,
    required this.routePath,
  });

  final String routeName;
  final String routePath;
}
