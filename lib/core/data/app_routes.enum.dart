enum AppRoutes {
  homepage(
    routeName: 'homepage',
    routePath: '/',
  );

  const AppRoutes({
    required this.routeName,
    required this.routePath,
  });

  final String routeName;
  final String routePath;
}
