import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/presentation/widgets/navlink.widget.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_title.model.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

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
    List<Widget> navLinks = [];
    for (var navItem in navItems) {
      navLinks.add(Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
        ),
        child: NavLink.simple(
          navItem: navItem,
        ),
      ));
    }

    return CustomAppBar._(
      navTitle: navTitle,
      trailing: Row(
        children: [
          ...navLinks,
          const VerticalDivider(
            indent: 8.0,
            endIndent: 8.0,
          ),
          const ThemeSelector(),
        ],
      ),
    );
  }

  factory CustomAppBar.mobile({
    required NavTitle navTitle,
    VoidCallback? onMenuPressed,
  }) {
    Widget? menuButton;
    if (onMenuPressed != null) {
      menuButton = GestureDetector(
        onTap: onMenuPressed,
        child: const Icon(EvaIcons.menu),
      );
    }

    return CustomAppBar._(
      navTitle: navTitle,
      trailing: menuButton,
    );
  }

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isCurrentRoute = false;

  @override
  void didChangeDependencies() {
    _checkIfNavLinkIsActive();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget leadingWidget = Container();
    /*if (widget.navTitle.icon != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
        ),
        child: Icon(widget.navTitle.icon),
      );
    }*/

    Widget trailingWidgets = Container();
    if (widget.trailing != null) {
      trailingWidgets = widget.trailing!;
    }

    String titleLabel = tr('homepage.app_bar.title');
    Widget titleWidget = HeadlineSmall(titleLabel);
    if (!_isCurrentRoute) {
      titleWidget = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: _navigateToPage,
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: titleWidget,
                ),
              ],
            ),
          ),
          trailingWidgets,
        ],
      ),
    );
  }

  void _checkIfNavLinkIsActive() {
    final currentRoute = GoRouter.of(context).location;
    final routePath = widget.navTitle.route.routePath;

    final isActive = (routePath == currentRoute);

    setState(() {
      _isCurrentRoute = isActive;
    });
  }

  void _navigateToPage() {
    final routeInfo = widget.navTitle.route;

    if (!_isCurrentRoute) {
      context.goNamed(routeInfo.routeName);
    }
  }
}
