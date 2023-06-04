import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.leading,
    this.navigations,
    this.onTitleTap,
    super.key,
  });

  final String title;
  final IconData? leading;
  final List<NavItem>? navigations;
  final VoidCallback? onTitleTap;

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget leadingWidget = Container();
    if (widget.leading != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
        ),
        child: Icon(widget.leading),
      );
    }

    Widget trailingWidgets = Container();
    if (widget.navigations != null) {
      trailingWidgets = Row(
        children: widget.navigations!.map((e) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  _navigateTo(e.route);
                },
                child: Text(e.label),
              ),
            ),
          );
        }).toList(),
      );
    }

    Widget appBarTitle = HeadlineSmall(widget.title);
    if (widget.onTitleTap != null) {
      appBarTitle = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onTitleTap,
          child: appBarTitle,
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
                appBarTitle,
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
