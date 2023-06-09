import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

import 'package:portfolio_web/core/presentation/widgets/navlink.widget.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

class CustomBackdrop extends StatelessWidget {
  const CustomBackdrop({
    super.key,
    this.navItems = const [],
    this.socials = const [],
  });

  final List<NavItem> navItems;
  final List<SocialIcon> socials;

  @override
  Widget build(BuildContext context) {
    return BackdropNavigationBackLayer(
      itemPadding: const EdgeInsets.all(10.0),
      items: [
        _BackdropNavigation(
          navItems: navItems,
        ),
        _BackdropFooter(
          socials: socials,
        ),
      ],
    );
  }
}

class _BackdropNavigation extends StatelessWidget {
  const _BackdropNavigation({
    required this.navItems,
  });

  final List<NavItem> navItems;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    List<Widget> navLinks = [];
    for (var navItem in navItems) {
      navLinks.add(Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(
          bottom: 10.0,
        ),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: NavLink(
          navItem: navItem,
        ),
      ));
    }

    return Column(
      children: navLinks,
    );
  }
}

class _BackdropFooter extends StatelessWidget {
  const _BackdropFooter({
    this.socials = const [],
  });

  final List<SocialIcon> socials;

  @override
  Widget build(BuildContext context) {
    Widget socialWidget = Row(
      children: socials.map((e) {
        return IconButton(
          icon: Icon(e.icon),
          onPressed: e.openLink,
          tooltip: e.tooltip,
        );
      }).toList(),
    );

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: socialWidget,
          ),
          const ThemeSelector(),
        ],
      ),
    );
  }
}
