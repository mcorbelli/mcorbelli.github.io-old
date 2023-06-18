import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';

class NavLink extends StatefulWidget {
  const NavLink._({
    required this.navItem,
    this.isBubbled = false,
  });

  final NavItem navItem;
  final bool isBubbled;

  factory NavLink.simple({
    required NavItem navItem,
  }) {
    return NavLink._(
      navItem: navItem,
    );
  }

  factory NavLink.bubble({
    required NavItem navItem,
  }) {
    return NavLink._(
      navItem: navItem,
      isBubbled: true,
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
    super.didChangeDependencies();
    _checkIfNavLinkIsActive();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget navLink = BodySmall(
      widget.navItem.label,
      style: (() {
        if (_isCurrentRoute) {
          return TextStyle(
            fontWeight: FontWeight.bold,
            decoration: (() {
              if (!widget.isBubbled) {
                return TextDecoration.underline;
              }
            }()),
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
    final routePath = widget.navItem.route.routePath;

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
    final routeInfo = widget.navItem.route;

    if (_isCurrentRoute == false) {
      context.goNamed(routeInfo.routeName);
    }
  }
}
