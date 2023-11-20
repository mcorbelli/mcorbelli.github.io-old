import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';

class NotFoundScreen extends Screen implements ErrorScreen {
  final _route = AppRoutes.notFound;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

  @override
  Page<void> build(context, state) {
    return NoTransitionPage(
      child: ScreenTypeLayout.builder(
        desktop: (_) => const _NotFoundDesktop(),
        mobile: (_) => const _NotFoundMobile(),
      ),
    );
  }
}

class _NotFoundDesktop extends StatelessWidget {
  const _NotFoundDesktop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.desktop(
        title: t.homepage.app_bar.title,
        redirect: AppRoutes.homepage,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DisplayMedium('404'),
            DisplaySmall(t.not_found.title),
          ],
        ),
      ),
    );
  }
}

class _NotFoundMobile extends StatelessWidget {
  const _NotFoundMobile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.mobile(
        title: t.homepage.app_bar.title,
        redirect: AppRoutes.homepage,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DisplayMedium('404'),
            DisplaySmall(t.not_found.title),
          ],
        ),
      ),
    );
  }
}
