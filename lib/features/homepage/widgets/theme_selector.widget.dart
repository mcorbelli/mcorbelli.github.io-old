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
    iconData: EvaIcons.sun,
    color: const Color(0XFFF7BE39),
  ),
  ThemeAction(
    themeMode: ThemeMode.dark,
    tooltip: tr('$themeKey.help_dark'),
    iconData: EvaIcons.moon,
    color: const Color(0XFF3271C2),
  ),
  ThemeAction(
    themeMode: ThemeMode.system,
    tooltip: tr('$themeKey.help_system'),
    iconData: EvaIcons.hardDrive,
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
    return PopupMenuButton<ThemeAction>(
      onSelected: (value) {
        _onThemeSelected(value.themeMode);
      },
      tooltip: tr('$themeKey.help_select'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      constraints: const BoxConstraints.tightFor(),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      clipBehavior: Clip.antiAlias,
      itemBuilder: (_) {
        return themes.map((action) {
          return PopupMenuItem<ThemeAction>(
            value: action,
            child: _SingleThemeItem(action),
          );
        }).toList();
      },
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (previous, current) {
          return previous.themeMode != current.themeMode;
        },
        builder: (context, state) {
          final action = themes.firstWhere((element) {
            return element.themeMode == state.activeThemeMode;
          });

          return _SingleThemeItem(
            action,
            showTooltip: false,
          );
        },
      ),
    );
  }

  void _onThemeSelected(ThemeMode mode) {
    final bloc = context.read<ThemeBloc>();
    bloc.add(ThemeEvent.manualThemeChange(mode));
  }
}

class _SingleThemeItem extends StatelessWidget {
  const _SingleThemeItem(
    this.action, {
    this.showTooltip = true,
  });

  final ThemeAction action;
  final bool showTooltip;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget widget = Center(
      child: Icon(
        action.iconData,
        color: (() {
          if (action.color == null) {
            return colorScheme.onBackground;
          }
          return action.color;
        }()),
      ),
    );

    if (showTooltip) {
      widget = Tooltip(
        message: action.tooltip,
        child: widget,
      );
    }

    return widget;
  }
}
