import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;

import 'package:portfolio_web/core/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:portfolio_web/features/homepage/data/models/theme_action.model.dart';

final themes = [
  ThemeAction(
    themeMode: ThemeMode.light,
    tooltip: tr('help_light_theme'),
    icon: Icons.light_mode,
    color: const Color(0XFFF7BE39),
  ),
  ThemeAction(
    themeMode: ThemeMode.dark,
    tooltip: tr('help_dark_theme'),
    icon: Icons.dark_mode,
    color: const Color(0XFF3271C2),
  ),
];

class ThemeSelector extends StatefulWidget {
  const ThemeSelector({super.key});

  @override
  State<ThemeSelector> createState() => _ThemeSelectorState();
}

class _ThemeSelectorState extends State<ThemeSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<ThemeBloc, ThemeState>(
          buildWhen: (previous, current) {
            return previous.followSystem != current.followSystem;
          },
          builder: (context, state) {
            return _CustomBadge(
              isEnable: state.followSystem,
              child: IconButton(
                onPressed: () {
                  _onSwitchSystemMode();
                },
                tooltip: tr('help_system_theme'),
                icon: const Icon(Icons.computer),
              ),
            );
          },
        ),
        BlocBuilder<ThemeBloc, ThemeState>(
          buildWhen: (previous, current) {
            return previous.themeMode != current.themeMode;
          },
          builder: (context, state) {
            return Row(
              children: themes.map((e) {
                return IconButton(
                  onPressed: () {
                    _onThemeSelected(e.themeMode);
                  },
                  tooltip: e.tooltip,
                  icon: Icon(e.icon),
                  color: (() {
                    if (e.themeMode == state.themeMode) {
                      return e.color;
                    }
                  }()),
                );
              }).toList(),
            );
          },
        )
      ],
    );
  }

  void _onSwitchSystemMode() {
    final bloc = context.read<ThemeBloc>();
    bloc.add(const ThemeEvent.switchSystemMode());
  }

  void _onThemeSelected(ThemeMode mode) {
    final bloc = context.read<ThemeBloc>();
    bloc.add(ThemeEvent.manualThemeChange(mode));
  }
}

class _CustomBadge extends StatelessWidget {
  const _CustomBadge({
    required this.child,
    this.isEnable = false,
  });

  final Widget child;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(
        top: 4.0,
        end: 4.0,
      ),
      badgeContent: (() {
        IconData currentIcon = Icons.close;
        if (isEnable == true) {
          currentIcon = Icons.check;
        }

        return Icon(
          currentIcon,
          color: Colors.white,
          size: 4.0,
        );
      }()),
      badgeAnimation: const badges.BadgeAnimation.rotation(
        animationDuration: Duration(
          milliseconds: 500,
        ),
        colorChangeAnimationDuration: Duration(
          milliseconds: 500,
        ),
        curve: Curves.fastOutSlowIn,
        colorChangeAnimationCurve: Curves.easeInCubic,
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: (() {
          if (isEnable == true) {
            return const Color(0XFF359632);
          }
          return const Color(0XFFBF3F36);
        }()),
      ),
      child: child,
    );
  }
}
