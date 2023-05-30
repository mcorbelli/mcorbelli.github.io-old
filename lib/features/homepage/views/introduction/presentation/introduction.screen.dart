import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';

class IntroductionScreen extends Screen implements InitialScreen {
  final _route = AppRoutes.homepage;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

  @override
  Page<void> build(context, state) {
    return NoTransitionPage(
      child: ScreenTypeLayout.builder(
        desktop: (_) => const _IntroductionDesktop(),
        tablet: (_) => const _IntroductionDesktop(),
        mobile: (_) => const _IntroductionDesktop(),
      ),
    );
  }
}

class _IntroductionDesktop extends StatefulWidget {
  const _IntroductionDesktop();

  @override
  State<_IntroductionDesktop> createState() => _IntroductionDesktopState();
}

class _IntroductionDesktopState extends State<_IntroductionDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplayLarge(tr('introduction.title')),
        OutlinedButton(
          onPressed: () {
            _navigateTo(AppRoutes.contacts);
          },
          child: Text(tr('introduction.btn_navigate')),
        ),
      ],
    );
  }

  void _navigateTo(AppRoutes route) {
    GoRouter.of(context).goNamed(route.routeName);
  }
}
