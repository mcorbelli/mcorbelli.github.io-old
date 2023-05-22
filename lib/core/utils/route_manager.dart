import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/features/homepage/presentation/homepage.screen.dart';

class RouteManager {
  late GoRouter _router;

  RouteManager() {
    _router = createGoRouter(
      screens: [
        HomePageScreen(),
      ],
    );
  }

  /// The route information parser used by [GoRouter].

  RouteInformationParser<Object> get infoParser {
    return _router.routeInformationParser;
  }

  /// The router delegate. Provide this to the MaterialApp
  /// or CupertinoApp's .router() constructor

  RouterDelegate<Object>? get routerDelegate {
    return _router.routerDelegate;
  }

  /// The route information provider used by [GoRouter].

  RouteInformationProvider get infoProvider {
    return _router.routeInformationProvider;
  }
}
