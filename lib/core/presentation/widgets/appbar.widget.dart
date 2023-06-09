import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/navlink.widget.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_title.model.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar._({
    required this.navTitle,
    this.trailing,
  });

  final NavTitle navTitle;
  final Widget? trailing;

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  factory CustomAppBar.desktop({
    required NavTitle navTitle,
    List<NavItem> navItems = const [],
  }) {
    List<NavLink> navLinks = [];
    for (var navItem in navItems) {
      navLinks.add(NavLink(
        navItem: navItem,
        margin: const EdgeInsets.only(
          left: 10.0,
        ),
      ));
    }

    return CustomAppBar._(
      navTitle: navTitle,
      trailing: Row(
        children: navLinks,
      ),
    );
  }

  factory CustomAppBar.mobile({
    required NavTitle navTitle,
    VoidCallback? onMenuPressed,
  }) {
    return CustomAppBar._(
      navTitle: navTitle,
      trailing: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: onMenuPressed,
      ),
    );
  }

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget leadingWidget = Container();
    if (widget.navTitle.icon != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
        ),
        child: Icon(widget.navTitle.icon),
      );
    }

    Widget trailingWidgets = Container();
    if (widget.trailing != null) {
      trailingWidgets = widget.trailing!;
    }

    String titleLabel = widget.navTitle.label;
    Widget titleWidget = HeadlineSmall(titleLabel);
    if (widget.navTitle.route != null) {
      titleWidget = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            _navigateTo(widget.navTitle.route!);
          },
          child: titleWidget,
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colorScheme.background,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                leadingWidget,
                titleWidget,
              ],
            ),
          ),
          trailingWidgets,
        ],
      ),
    );
  }

  void _navigateTo(AppRoutes route) {
    final currentRoute = GoRouter.of(context).location;

    if (!route.routeName.contains(currentRoute)) {
      context.goNamed(route.routeName);
    }
  }
}
