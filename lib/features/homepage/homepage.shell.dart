import 'package:backdrop/backdrop.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/presentation/widgets/backdrop.widget.dart';
import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/presentation/widgets/footer.widget.dart';
import 'package:portfolio_web/features/homepage/views/contacts/presentation/contacts.screen.dart';
import 'package:portfolio_web/features/homepage/views/introduction/presentation/introduction.screen.dart';
import 'package:portfolio_web/features/homepage/widgets/app_version.widget.dart';
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
        title: tr('homepage.app_bar.title'),
        redirect: AppRoutes.homepage,
        navItems: const [
          AppRoutes.homepage,
          AppRoutes.contacts,
        ],
      ),
      body: widget.child,
      bottomNavigationBar: const CustomFooter(
        socials: [
          Socials.github,
          Socials.twitter,
          Socials.linkedin,
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
  bool _isRevealed = false;

  @override
  void initState() {
    _backdropKey = GlobalKey<BackdropScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final bgBackdrop = colorScheme.background;

    Color frontLayerScrim = Colors.transparent;
    if (_isRevealed == true) {
      final primaryBackdrop = colorScheme.primary;
      frontLayerScrim = primaryBackdrop.withOpacity(0.2);
    }

    BorderRadiusGeometry borderRadius = BorderRadius.zero;
    if (_isRevealed == true) {
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      );
    }

    return BackdropScaffold(
      key: _backdropKey,
      appBar: CustomAppBar.mobile(
        title: tr('homepage.app_bar.title'),
        redirect: AppRoutes.homepage,
        onMenuPressed: onMenuPressed,
      ),
      backLayer: const CustomBackdrop(
        navItems: [
          AppRoutes.homepage,
          AppRoutes.contacts,
        ],
        socials: [
          Socials.github,
          Socials.twitter,
          Socials.linkedin,
        ],
      ),
      frontLayer: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          widget.child,
          const CustomFooter(
            leading: AppVersion(
              margin: EdgeInsets.only(
                left: 8.0,
              ),
            ),
          ),
        ],
      ),
      stickyFrontLayer: true,
      backLayerBackgroundColor: bgBackdrop,
      frontLayerScrim: frontLayerScrim,
      frontLayerShape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    );
  }

  void onMenuPressed() {
    _backdropKey.currentState?.fling();

    final state = _backdropKey.currentState;
    final isNowRevealed = (state?.isBackLayerRevealed == true);

    setState(() {
      _isRevealed = isNowRevealed;
    });
  }
}
