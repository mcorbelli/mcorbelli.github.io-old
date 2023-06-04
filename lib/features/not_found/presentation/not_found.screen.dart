import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:portfolio_web/core/data/app_routes.enum.dart';

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
        tablet: (_) => const _NotFoundDesktop(),
        mobile: (_) => const _NotFoundDesktop(),
      ),
    );
  }
}

class _NotFoundDesktop extends StatefulWidget {
  const _NotFoundDesktop();

  @override
  State<_NotFoundDesktop> createState() => _NotFoundDesktopState();
}

class _NotFoundDesktopState extends State<_NotFoundDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr('homepage.app_bar.title'),
        onTitleTap: () {
          _navigateTo(AppRoutes.homepage);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DisplayMedium(tr('not_found.title')),
          ],
        ),
      ),
    );
  }

  void _navigateTo(AppRoutes route) {
    context.pushNamed(route.routeName);
  }
}
