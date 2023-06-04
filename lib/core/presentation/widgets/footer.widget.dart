import 'package:flutter/material.dart';

import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
    this.trailing,
    this.socials = const [],
  });

  final Widget? trailing;
  final List<SocialIcon>? socials;

  @override
  Widget build(BuildContext context) {
    Widget trailingWidget = Container();
    if (trailing != null) {
      trailingWidget = trailing!;
    }

    Widget socialWidget = Container();
    if (socials != null) {
      socialWidget = Row(
        children: socials!.map((e) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: IconButton(
              icon: Icon(e.icon),
              onPressed: e.openLink,
              tooltip: e.tooltip,
            ),
          );
        }).toList(),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: socialWidget,
          ),
          trailingWidget,
        ],
      ),
    );
  }
}
