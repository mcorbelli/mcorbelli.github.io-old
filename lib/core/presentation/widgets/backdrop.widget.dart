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
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: _BackdropNavigation(navItems),
          ),
          _BackdropFooter(socials),
        ],
      ),
    );
  }
}

class _BackdropNavigation extends StatelessWidget {
  const _BackdropNavigation(this.navItems);

  final List<NavItem> navItems;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 8 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: navItems.length,
      itemBuilder: (_, index) {
        return NavLink.bubble(
          navItem: navItems[index],
        );
      },
    );
  }
}

class _BackdropFooter extends StatelessWidget {
  const _BackdropFooter(this.socials);

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
      padding: const EdgeInsets.all(00.0),
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
