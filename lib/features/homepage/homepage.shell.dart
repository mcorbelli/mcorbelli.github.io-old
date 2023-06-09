import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/presentation/widgets/footer.widget.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/views/contacts/presentation/contacts.screen.dart';
import 'package:portfolio_web/features/homepage/views/introduction/presentation/introduction.screen.dart';
import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';
import 'package:portfolio_web/core/presentation/widgets/drawer.widget.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_title.model.dart';

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

const socialKey = 'homepage.footer.socials';
const navigationKey = 'homepage.app_bar.navigations';

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
        navTitle: NavTitle(
          route: AppRoutes.homepage,
          label: tr('homepage.app_bar.title'),
        ),
        navItems: [
          NavItem(
            route: AppRoutes.homepage,
            label: tr('$navigationKey.homepage'),
          ),
          NavItem(
            route: AppRoutes.contacts,
            label: tr('$navigationKey.contacts'),
          ),
        ],
      ),
      body: widget.child,
      bottomNavigationBar: CustomFooter(
        socials: [
          SocialIcon(
            icon: EvaIcons.github,
            url: 'https://github.com/',
            tooltip: tr('$socialKey.github'),
          ),
          SocialIcon(
            icon: EvaIcons.twitter,
            url: 'https://twitter.com/',
            tooltip: tr('$socialKey.twitter'),
          ),
          SocialIcon(
            icon: EvaIcons.linkedin,
            url: 'https://linkedin.com/',
            tooltip: tr('$socialKey.linkedin'),
          ),
        ],
        trailing: const ThemeSelector(),
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
  late GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    _scaffoldKey = GlobalKey();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar.mobile(
        navTitle: NavTitle(
          route: AppRoutes.homepage,
          label: tr('homepage.app_bar.title'),
        ),
        onMenuPressed: onMenuPressed,
      ),
      endDrawer: CustomDrawer(
        title: tr('homepage.drawer.title'),
        navItems: [
          NavItem(
            route: AppRoutes.homepage,
            label: tr('$navigationKey.homepage'),
          ),
          NavItem(
            route: AppRoutes.contacts,
            label: tr('$navigationKey.contacts'),
          ),
        ],
      ),
      body: widget.child,
    );
  }

  void onMenuPressed() {
    if (_scaffoldKey.currentState != null) {
      _scaffoldKey.currentState!.openEndDrawer();
    }
  }
}
