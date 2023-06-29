import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/presentation/widgets/backdrop.widget.dart';
import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/presentation/widgets/footer.widget.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/views/contacts/presentation/contacts.screen.dart';
import 'package:portfolio_web/features/homepage/views/introduction/presentation/introduction.screen.dart';
import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';
import 'package:portfolio_web/features/homepage/widgets/app_version.widget.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_title.model.dart';
import 'package:portfolio_web/core/data/enums/socials.enum.dart';

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
    return ScreenTypeLayout.builder(
      desktop: (_) => _HomepageDesktop(child),
      mobile: (_) => _HomepageMobile(child),
    );
  }
}

class _HomepageDesktop extends StatefulWidget {
  const _HomepageDesktop(this.child);

  final Widget child;

  @override
  State<_HomepageDesktop> createState() => _HomepageDesktopState();
}

class _HomepageDesktopState extends State<_HomepageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.desktop(
        navTitle: const NavTitle(AppRoutes.homepage),
        navItems: const [
          NavItem(AppRoutes.homepage),
          NavItem(AppRoutes.contacts),
        ],
      ),
      body: widget.child,
      bottomNavigationBar: const CustomFooter(
        socials: [
          SocialIcon(Socials.github),
          SocialIcon(Socials.twitter),
          SocialIcon(Socials.linkedin),
        ],
        leading: AppVersion(
          margin: EdgeInsets.only(
            left: 8.0,
          ),
        ),
      ),
    );
  }
}

class _HomepageMobile extends StatefulWidget {
  const _HomepageMobile(this.child);

  final Widget child;

  @override
  State<_HomepageMobile> createState() => _HomepageMobileState();
}

class _HomepageMobileState extends State<_HomepageMobile> {
  late GlobalKey<BackdropScaffoldState> _backdropKey;

  @override
  void initState() {
    _backdropKey = GlobalKey<BackdropScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final frontLayerScrim = colorScheme.surface.withOpacity(0.6);

    return BackdropScaffold(
      key: _backdropKey,
      stickyFrontLayer: true,
      animationCurve: Curves.decelerate,
      frontLayerScrim: frontLayerScrim,
      appBar: CustomAppBar.mobile(
        navTitle: const NavTitle(AppRoutes.homepage),
        onMenuPressed: onMenuPressed,
      ),
      backLayer: const CustomBackdrop(
        navItems: [
          NavItem(AppRoutes.homepage),
          NavItem(AppRoutes.contacts),
        ],
        socials: [
          SocialIcon(Socials.github),
          SocialIcon(Socials.twitter),
          SocialIcon(Socials.linkedin),
        ],
      ),
      frontLayer: widget.child,
      backLayerBackgroundColor: colorScheme.background,
    );
  }

  void onMenuPressed() {
    _backdropKey.currentState?.fling();
  }
}
