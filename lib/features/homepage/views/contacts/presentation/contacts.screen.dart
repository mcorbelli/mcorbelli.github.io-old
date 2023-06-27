import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
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

class _ContactsDesktop extends StatelessWidget {
  const _ContactsDesktop();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DisplayMedium(tr('contacts.title')),
        BodyLarge(tr('contacts.subtitle')),
      ],
    );
  }
}
