import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/app_version.widget.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/owner_info.widget.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/theme_selector.widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageScreen extends Screen implements InitialScreen {
  final _route = AppRoutes.homepage;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

  @override
  Widget build(context, state) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const _HomePageDesktop(),
    );
  }
}

class _HomePageDesktop extends StatelessWidget {
  const _HomePageDesktop();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Corbelli Mattia',
        trailing: ThemeSelector(),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 10.0,
            bottom: 10.0,
            child: AppVersion(),
          ),
          OwnerInfo(),
        ],
      ),
    );
  }
}
