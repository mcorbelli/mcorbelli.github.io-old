import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/presentation/widgets/footer.widget.dart';
import 'package:portfolio_web/features/homepage/data/models/nav_item.model.dart';
import 'package:portfolio_web/features/homepage/views/contacts/presentation/contacts.screen.dart';
import 'package:portfolio_web/features/homepage/views/introduction/presentation/introduction.screen.dart';
import 'package:portfolio_web/features/homepage/data/models/social_icon.model.dart';
import 'package:portfolio_web/features/homepage/widgets/theme_selector.widget.dart';

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
      tablet: (_) => _HomepageDesktop(child),
      mobile: (_) => _HomepageDesktop(child),
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
  final socialKey = 'homepage.footer.socials';
  final navigationKey = 'homepage.app_bar.navigations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr('homepage.app_bar.title'),
        navigations: [
          NavItem(
            route: AppRoutes.homepage,
            label: tr('$navigationKey.homepage'),
          ),
          NavItem(
            route: AppRoutes.contacts,
            label: tr('$navigationKey.contacts'),
          ),
        ],
        onTitleTap: () {
          _navigateTo(AppRoutes.homepage);
        },
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

  void _navigateTo(AppRoutes route) {
    final currentRoute = GoRouter.of(context).location;
    if (route.routeName.contains(currentRoute)) {
      context.pushNamed(route.routeName);
    }
  }
}
