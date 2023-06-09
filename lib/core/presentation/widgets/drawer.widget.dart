import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';
import 'package:portfolio_web/features/homepage/homepage.shell.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
    required this.title,
    this.navItems,
    this.footer,
  });

  final String title;
  final List<NavItem>? navItems;
  final Widget? footer;

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    List<Widget> navigationWidget = [];
    if (widget.navItems != null) {
      navigationWidget = widget.navItems!.map((e) {
        return GestureDetector(
          child: ListTile(
            title: BodySmall(e.label),
          ),
        );
      }).toList();
    }

    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                  ),
                  child: Container(),
                ),
                ...navigationWidget,
              ],
            ),
          ),
          _DrawerFooter(
            socials: [
              SocialIcon(
                icon: EvaIcons.github,
                url: 'https://github.com/',
                tooltip: tr('$socialKey.github'),
              ),
              SocialIcon(
                icon: EvaIcons.twitter,
                url: 'https://twitter.com/',
                tooltip: tr('$socialKey.twitter'),
              ),
              SocialIcon(
                icon: EvaIcons.linkedin,
                url: 'https://linkedin.com/',
                tooltip: tr('$socialKey.linkedin'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DrawerFooter extends StatelessWidget {
  const _DrawerFooter({
    this.socials = const [],
  });

  final List<SocialIcon>? socials;

  @override
  Widget build(BuildContext context) {
    Widget socialWidget = Container();
    if (socials != null) {
      socialWidget = Row(
        children: socials!.map((e) {
          return IconButton(
            icon: Icon(e.icon),
            onPressed: e.openLink,
            tooltip: e.tooltip,
          );
        }).toList(),
      );
    }

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
