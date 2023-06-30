import 'package:flutter/material.dart';

import 'package:portfolio_web/core/data/enums/socials.enum.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({
    super.key,
    this.leading,
    this.socials = const [],
  });

  final Widget? leading;
  final List<Socials> socials;

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(),
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
