import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/presentation/widgets/backdrop.widget.dart';
import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/core/presentation/widgets/footer.widget.dart';
import 'package:portfolio_web/features/homepage/views/contacts/presentation/contacts.screen.dart';
import 'package:portfolio_web/features/homepage/views/introduction/presentation/introduction.screen.dart';
import 'package:portfolio_web/features/homepage/cubit/backdrop_cubit.dart';
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
    return BlocProvider<BackdropCubit>(
      create: (_) => BackdropCubit(),
      child: ScreenTypeLayout.builder(
        desktop: (_) => _HomepageDesktop(child),
        mobile: (_) => _HomepageMobile(child),
      ),
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
        title: t.uiComponents.appBar.title,
        redirect: AppRoutes.homepage,
        navItems: const [
          AppRoutes.homepage,
          AppRoutes.contacts,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox.shrink(
              child: widget.child,
            ),
            const CustomFooter(
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
          ],
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
    final cubit = context.read<BackdropCubit>();
    _backdropKey = cubit.backdropKey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<BackdropCubit>();
    final isRevealed = cubit.state.isRevealed;

    final colorScheme = Theme.of(context).colorScheme;
    final bgBackdrop = colorScheme.background;

    Color frontLayerScrim = Colors.transparent;
    if (isRevealed) {
      final primaryBackdrop = colorScheme.primary;
      frontLayerScrim = primaryBackdrop.withOpacity(0.2);
    }

    BorderRadiusGeometry borderRadius = BorderRadius.zero;
    if (isRevealed) {
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      );
    }

    return BackdropScaffold(
      key: _backdropKey,
      appBar: CustomAppBar.mobile(
        title: t.uiComponents.appBar.title,
        redirect: AppRoutes.homepage,
        isMenuOpen: isRevealed,
        onMenuPressed: _onMenuPressed,
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
      frontLayer: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox.shrink(
              child: widget.child,
            ),
            const CustomFooter(
              leading: AppVersion(
                margin: EdgeInsets.only(
                  left: 8.0,
                ),
              ),
            ),
          ],
        ),
      ),
      stickyFrontLayer: true,
      revealBackLayerAtStart: isRevealed,
      backLayerBackgroundColor: bgBackdrop,
      frontLayerScrim: frontLayerScrim,
      frontLayerShape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    );
  }

  void _onMenuPressed() {
    context.read<BackdropCubit>().fling();
  }
}
