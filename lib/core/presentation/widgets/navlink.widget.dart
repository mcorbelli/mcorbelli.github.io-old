import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';

class NavLink extends StatefulWidget {
  const NavLink({
    super.key,
    required this.navItem,
    this.margin = EdgeInsets.zero,
  });

  final NavItem navItem;
  final EdgeInsets margin;

  @override
  State<NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<NavLink> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            _navigateTo(widget.navItem.route);
          },
          child: BodySmall(widget.navItem.label),
        ),
      ),
    );
  }

  void _navigateTo(AppRoutes route) {
    final currentRoute = GoRouter.of(context).location;

    if (!route.routeName.contains(currentRoute)) {
      context.pushNamed(route.routeName);
    }
  }
}
