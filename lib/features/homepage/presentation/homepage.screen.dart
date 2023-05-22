import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/app_version.widget.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/owner_info.widget.dart';

class HomePageScreen extends Screen implements InitialScreen {
  @override
  String get routeName => AppRoutes.homepage.routeName;

  @override
  String get routePath => AppRoutes.homepage.routePath;

  @override
  Widget build(context, state) {
    return const HomePage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
