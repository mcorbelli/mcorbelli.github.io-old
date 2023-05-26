import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio_web/core/data/app_routes.enum.dart';
import 'package:portfolio_web/core/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:portfolio_web/core/presentation/widgets/appbar.widget.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/app_version.widget.dart';
import 'package:portfolio_web/features/homepage/presentation/widgets/owner_info.widget.dart';

class HomePageScreen extends Screen implements InitialScreen {
  final _route = AppRoutes.homepage;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

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
      appBar: CustomAppBar(
        title: 'Corbelli Mattia',
        leading: Icons.account_circle,
        trailing: _ThemeSelector(),
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

class ThemeAction {
  const ThemeAction({
    required this.mode,
    required this.tooltip,
    required this.icon,
  });

  final ThemeMode mode;
  final String tooltip;
  final IconData icon;
}

final themes = <ThemeAction>[
  ThemeAction(
    mode: ThemeMode.system,
    tooltip: tr('help_system_theme'),
    icon: Icons.computer,
  ),
  ThemeAction(
    mode: ThemeMode.light,
    tooltip: tr('help_light_theme'),
    icon: Icons.light_mode,
  ),
  ThemeAction(
    mode: ThemeMode.dark,
    tooltip: tr('help_dark_theme'),
    icon: Icons.dark_mode,
  ),
];

class _ThemeSelector extends StatefulWidget {
  const _ThemeSelector();

  @override
  State<_ThemeSelector> createState() => _ThemeSelectorState();
}

class _ThemeSelectorState extends State<_ThemeSelector> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Row(
          children: themes.map((e) {
            final isActive = (e.mode == state.mode);

            return IconButton(
              onPressed: () {
                if (isActive == false) {
                  _onThemeSelected(e.mode);
                }
              },
              tooltip: e.tooltip,
              icon: Icon(e.icon),
              isSelected: isActive,
            );
          }).toList(),
        );
      },
    );
  }

  void _onThemeSelected(ThemeMode mode) {
    final bloc = context.read<ThemeBloc>();
    bloc.add(ThemeEvent.themeChange(mode));
  }
}
