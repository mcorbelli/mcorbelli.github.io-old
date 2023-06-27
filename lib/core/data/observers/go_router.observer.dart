import 'package:flutter/material.dart';
import 'package:logzilla/logzilla.dart';

/// GoRouterObserver is an abstract class that extends NavigatorObserver to monitor route changes.
/// This allows us to track anytime a route is pushed, popped, removed or replaced.
/// This is incredibly useful for debugging routing in the application.

class GoRouterObserver extends NavigatorObserver {
  late Logzilla _logger;

  GoRouterObserver() {
    _logger = const Logzilla('GoRouterObserver');
  }

  /// didPush is called when a new route is pushed onto the navigator.
  /// This is a great spot to add logging/analytics at the individual route level.

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.debug('<<<DID_PUSH>>> current: $route - previous: $previousRoute');
  }

  /// didPop is called when the current route is popped from the navigator.
  /// This allows us to track when a user navigates back from a route.

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.debug('<<<DID_POP>>> current: $route - previous: $previousRoute');
  }

  /// didRemove is called when a route is removed from the navigator.
  /// This can be useful for tracking when a route is programmatically removed
  /// from the navigation stack.

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.debug('<<<DID_REMOVE>>> current: $route - previous: $previousRoute');
  }

  /// didReplace is called when a current route is replaced with a new route.
  /// This is useful for tracking when a route is replaced, such as when navigating to
  /// a login screen from a splash screen.

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _logger.debug('<<<DID_REPLACE>>> new: $newRoute - old: $oldRoute');
  }
}
