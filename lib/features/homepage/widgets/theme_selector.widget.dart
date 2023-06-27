import 'package:easy_localization/easy_localization.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio_web/core/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:portfolio_web/features/homepage/data/models/theme_action.model.dart';

const themeKey = 'homepage.app_bar.theme_selector';

final themes = [
  ThemeAction(
    themeMode: ThemeMode.light,
    tooltip: tr('$themeKey.help_light'),
    icon: EvaIcons.sun,
    color: const Color(0XFFF7BE39),
  ),
  ThemeAction(
    themeMode: ThemeMode.dark,
    tooltip: tr('$themeKey.help_dark'),
    icon: EvaIcons.moon,
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
    return BlocBuilder<ThemeBloc, ThemeState>(
      buildWhen: (previous, current) {
        return previous.themeMode != current.themeMode;
      },
      builder: (context, state) {
        return Row(
          children: themes.map((e) {
            final current = state.activeThemeMode;
            final isActive = (e.themeMode == current);

            return IconButton(
              onPressed: () {
                _onThemeSelected(e.themeMode);
              },
              tooltip: e.tooltip,
              icon: Icon(e.icon),
              color: (() {
                if (isActive) {
                  return e.color;
                }
              }()),
            );
          }).toList(),
        );
      },
    );
  }

  void _onThemeSelected(ThemeMode mode) {
    final bloc = context.read<ThemeBloc>();
    bloc.add(ThemeEvent.manualThemeChange(mode));
  }
}
