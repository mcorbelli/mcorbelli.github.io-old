import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';

class ContactsScreen extends Screen {
  final _route = AppRoutes.contacts;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

  @override
  Page<void> build(context, state) {
    return NoTransitionPage(
      child: ScreenTypeLayout.builder(
        desktop: (_) => const _ContactsDesktop(),
        tablet: (_) => const _ContactsDesktop(),
        mobile: (_) => const _ContactsDesktop(),
      ),
    );
  }
}

class _ContactsDesktop extends StatefulWidget {
  const _ContactsDesktop();

  @override
  State<_ContactsDesktop> createState() => _ContactsDesktopState();
}

class _ContactsDesktopState extends State<_ContactsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplayLarge(tr('contacts.title')),
        OutlinedButton(
          onPressed: () {
            _navigateTo(AppRoutes.homepage);
          },
          child: Text(tr('contacts.btn_navigate')),
        ),
      ],
    );
  }

  void _navigateTo(AppRoutes route) {
    GoRouter.of(context).goNamed(route.routeName);
  }
}
