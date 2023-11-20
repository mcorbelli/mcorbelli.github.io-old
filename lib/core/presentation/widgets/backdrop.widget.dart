import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/data/enums/socials.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/navlink.widget.dart';
import 'package:portfolio_web/features/homepage/cubit/backdrop_cubit.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

class CustomBackdrop extends StatelessWidget {
  const CustomBackdrop({
    super.key,
    this.navItems = const [],
    this.socials = const [],
  });

  final List<AppRoutes> navItems;
  final List<Socials> socials;

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

class _BackdropNavigation extends StatefulWidget {
  const _BackdropNavigation(this.navItems);

  final List<AppRoutes> navItems;

  @override
  State<_BackdropNavigation> createState() => _BackdropNavigationState();
}

class _BackdropNavigationState extends State<_BackdropNavigation> {
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
      itemCount: widget.navItems.length,
      itemBuilder: (_, index) {
        return NavLink.bubble(
          navItem: widget.navItems[index],
          onNavLinkTap: onNavLinkTap,
        );
      },
    );
  }

  void onNavLinkTap() {
    context.read<BackdropCubit>().hide();
  }
}

class _BackdropFooter extends StatelessWidget {
  const _BackdropFooter(this.socials);

  final List<Socials> socials;

  @override
  Widget build(BuildContext context) {
    Widget socialWidget = Row(
      children: socials.map((e) {
        return IconButton(
          icon: Icon(e.icon),
          onPressed: e.openLink,
          tooltip: e.tooltipKey,
          padding: EdgeInsets.zero,
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
