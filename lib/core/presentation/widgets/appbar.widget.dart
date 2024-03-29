import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/navlink.widget.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar._({
    required this.title,
    this.redirect,
    this.trailing,
    this.logoAssetPath,
  });

  final String title;
  final AppRoutes? redirect;
  final Widget? trailing;
  final String? logoAssetPath;

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  factory CustomAppBar.desktop({
    required String title,
    AppRoutes? redirect,
    List<AppRoutes> navItems = const [],
    String? logoAssetPath,
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

    Widget trailing = const ThemeSelector();
    if (navLinks.isNotEmpty) {
      trailing = Row(
        children: [
          ...navLinks,
          const VerticalDivider(),
          const ThemeSelector(),
        ],
      );
    }

    return CustomAppBar._(
      title: title,
      redirect: redirect,
      trailing: trailing,
      logoAssetPath: logoAssetPath,
    );
  }

  factory CustomAppBar.mobile({
    required String title,
    AppRoutes? redirect,
    bool isMenuOpen = false,
    VoidCallback? onMenuPressed,
    String? logoAssetPath,
  }) {
    Widget? menuButton;
    if (onMenuPressed != null) {
      menuButton = GestureDetector(
        onTap: onMenuPressed,
        child: (() {
          if (isMenuOpen) {
            return const Icon(EvaIcons.close);
          }
          return const Icon(EvaIcons.menu);
        }()),
      );
    }

    return CustomAppBar._(
      title: title,
      redirect: redirect,
      trailing: menuButton,
      logoAssetPath: logoAssetPath,
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
    if (widget.logoAssetPath != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
        ),
        child: Image.network(widget.logoAssetPath!),
      );
    }

    Widget trailingWidgets = Container();
    if (widget.trailing != null) {
      trailingWidgets = widget.trailing!;
    }

    Widget titleWidget = HeadlineSmall(widget.title);
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
    final routePath = widget.redirect?.routePath;

    final isActive = (routePath == currentRoute);

    setState(() {
      _isCurrentRoute = isActive;
    });
  }

  void _navigateToPage() {
    final routeInfo = widget.redirect;

    if ((routeInfo != null) && !_isCurrentRoute) {
      context.goNamed(routeInfo.routeName);
    }
  }
}
