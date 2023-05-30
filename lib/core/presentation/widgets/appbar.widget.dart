import 'package:flutter/material.dart';

import 'package:portfolio_web/core/styles/typograph.theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.leading,
    this.trailing,
    this.onTitleTap,
    super.key,
  });

  final String title;
  final IconData? leading;
  final Widget? trailing;
  final VoidCallback? onTitleTap;

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    Widget leadingWidget = Container();
    if (leading != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(
          right: 10.0,
        ),
        child: Icon(leading),
      );
    }

    Widget trailingWidget = Container();
    if (trailing != null) {
      trailingWidget = trailing!;
    }

    Widget appBarTitle = HeadlineSmall(title);
    if (onTitleTap != null) {
      appBarTitle = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTitleTap,
          child: appBarTitle,
        ),
      );
    }

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
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
          trailingWidget,
        ],
      ),
    );
  }
}
