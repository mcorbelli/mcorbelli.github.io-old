import 'package:flutter/material.dart';

import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
    this.leading,
    this.socials = const [],
  });

  final Widget? leading;
  final List<SocialIcon> socials;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget leadingWidget = Container();
    if (leading != null) {
      leadingWidget = leading!;
    }

    Widget socialWidget = Row(
      children: socials.map((e) {
        return IconButton(
          icon: Icon(e.type.icon),
          onPressed: e.openLink,
          tooltip: e.type.tooltip,
        );
      }).toList(),
    );

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.background,
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            indent: 8.0,
            endIndent: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leadingWidget,
              socialWidget,
            ],
          )
        ],
      ),
    );
  }
}
