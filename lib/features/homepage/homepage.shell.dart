import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/features/homepage/views/contacts/presentation/contacts.screen.dart';
import 'package:portfolio_web/features/homepage/views/introduction/presentation/introduction.screen.dart';
import 'package:portfolio_web/features/homepage/widgets/app_version.widget.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

class HomepageShell extends ShellScreen {
  @override
  List<ScreenBase> subScreens() {
    return [
      IntroductionScreen(),
      ContactsScreen(),
    ];
  }

  @override
  Widget build(context, state, child) {
    return _Homepage(child);
  }
}

class _Homepage extends StatefulWidget {
  const _Homepage(this.child);

  final Widget child;

  @override
  State<_Homepage> createState() => __HomepageState();
}

class __HomepageState extends State<_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr('homepage.app_bar.title'),
        trailing: const ThemeSelector(),
        onTitleTap: () {
          _navigateTo(AppRoutes.homepage);
        },
      ),
      body: Stack(
        children: [
          widget.child,
          const Positioned(
            right: 10.0,
            bottom: 10.0,
            child: AppVersion(),
          ),
        ],
      ),
    );
  }

  void _navigateTo(AppRoutes route) {
    GoRouter.of(context).goNamed(route.routeName);
  }
}
