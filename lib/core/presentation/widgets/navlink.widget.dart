import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';

class NavLink extends StatefulWidget {
  const NavLink._({
    required this.route,
    this.isBubbled = false,
    this.onTap,
  });

  final AppRoutes route;
  final bool isBubbled;
  final VoidCallback? onTap;

  factory NavLink.simple({
    required AppRoutes navItem,
  }) {
    return NavLink._(
      route: navItem,
    );
  }

  factory NavLink.bubble({
    required AppRoutes navItem,
    VoidCallback? onNavLinkTap,
  }) {
    return NavLink._(
      route: navItem,
      isBubbled: true,
      onTap: onNavLinkTap,
    );
  }

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  bool _isActive = false;
  bool _isCurrentRoute = false;

  @override
  void didChangeDependencies() {
    _checkIfNavLinkIsActive();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget navLink = BodySmall(
      widget.route.title,
      style: (() {
        if (_isCurrentRoute) {
          return const TextStyle(
            fontWeight: FontWeight.bold,
            // decoration: (() {
            //   if (!widget.isBubbled) {
            //     return TextDecoration.underline;
            //   }
            // }()),
          );
        } else if (_isActive) {
          return const TextStyle(
            fontWeight: FontWeight.bold,
          );
        }
      }()),
    );

    if (widget.isBubbled) {
      navLink = Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(30.0),
          border: (() {
            if (_isActive || _isCurrentRoute) {
              return Border.all(
                color: colorScheme.primary,
                width: 2.0,
              );
            }
          }()),
        ),
        child: navLink,
      );
    }

    return _buildMouseRegion(navLink);
  }

  MouseRegion _buildMouseRegion(Widget child) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _onHoverButton(true),
      onExit: (_) => _onHoverButton(false),
      child: GestureDetector(
        onTap: _navigateToPage,
        child: child,
      ),
    );
  }

  void _checkIfNavLinkIsActive() {
    final currentRoute = GoRouter.of(context).location;
    final routePath = widget.route.routePath;

    final isActive = (routePath == currentRoute);

    setState(() {
      _isCurrentRoute = isActive;
    });
  }

  void _onHoverButton(bool isHovered) {
    setState(() {
      _isActive = isHovered;
    });
  }

  void _navigateToPage() {
    final routeInfo = widget.route;

    if (_isCurrentRoute == false) {
      context.goNamed(routeInfo.routeName);
    }

    if (widget.onTap != null && widget.isBubbled) {
      widget.onTap!();
    }
  }
}
