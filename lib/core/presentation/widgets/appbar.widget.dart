import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
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
    List<Widget> navWidget = navItems.map((e) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
        ),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              // _navigateTo(e.route);
            },
            child: BodySmall(e.label),
          ),
        ),
      );
    }).toList();

    return CustomAppBar._(
      navTitle: navTitle,
      trailing: Row(
        children: navWidget,
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

    Widget titleWidget = HeadlineSmall(widget.navTitle.label);
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
      context.pushNamed(route.routeName);
    }
  }
}
