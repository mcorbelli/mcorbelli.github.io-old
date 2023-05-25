import 'package:flutter/material.dart';

import 'package:portfolio_web/core/styles/text.theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.leading,
    this.trailing = const [],
    super.key,
  });

  final String title;
  final IconData? leading;
  final List<IconButton> trailing;

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          HeadlineSmall(title),
        ],
      ),
    );
  }
}
