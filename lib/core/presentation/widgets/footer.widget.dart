import 'package:flutter/material.dart';

import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
    this.trailing,
    this.socials = const [],
  });

  final Widget? trailing;
  final List<SocialIcon> socials;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget trailingWidget = Container();
    if (trailing != null) {
      trailingWidget = trailing!;
    }

    Widget socialWidget = Row(
      children: socials.map((e) {
        return IconButton(
          icon: Icon(e.icon),
          onPressed: e.openLink,
          tooltip: e.tooltip,
        );
      }).toList(),
    );

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.background,
      ),
      padding: const EdgeInsets.all(10.0),
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
