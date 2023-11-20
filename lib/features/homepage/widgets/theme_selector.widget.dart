import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/presentation/bloc/theme_bloc/theme_bloc.dart';
import 'package:portfolio_web/features/homepage/data/models/theme_action.model.dart';

final themes = [
  ThemeAction(
    themeMode: ThemeMode.light,
    tooltip: t['homepage.app_bar.theme_selector.light'],
    iconData: EvaIcons.sun,
    color: const Color(0XFFF7BE39),
  ),
  ThemeAction(
    themeMode: ThemeMode.dark,
    tooltip: t['homepage.app_bar.theme_selector.dark'],
    iconData: EvaIcons.moon,
    color: const Color(0XFF3271C2),
  ),
  ThemeAction(
    themeMode: ThemeMode.system,
    tooltip: t['homepage.app_bar.theme_selector.system'],
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: PopupMenuButton<ThemeAction>(
        onSelected: (value) {
          _onThemeSelected(value.themeMode);
        },
        tooltip: t.homepage.app_bar.theme_selector.tooltip,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        constraints: const BoxConstraints.tightFor(),
        clipBehavior: Clip.antiAlias,
        itemBuilder: (_) {
          return themes.map((action) {
            return PopupMenuItem<ThemeAction>(
              value: action,
              child: _SingleThemeItem(
                themeAction: action,
              ),
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
              themeAction: action,
              showTooltip: false,
            );
          },
        ),
      ),
    );
  }

  void _onThemeSelected(ThemeMode mode) {
    final bloc = context.read<ThemeBloc>();
    bloc.add(ThemeEvent.manualThemeChange(mode));
  }
}

class _SingleThemeItem extends StatelessWidget {
  const _SingleThemeItem({
    required this.themeAction,
    this.showTooltip = true,
  });

  final ThemeAction themeAction;
  final bool showTooltip;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget widget = Center(
      child: Icon(
        themeAction.iconData,
        color: (() {
          if (themeAction.color == null) {
            return colorScheme.onBackground;
          }
          return themeAction.color;
        }()),
      ),
    );

    if (showTooltip) {
      widget = Tooltip(
        message: themeAction.tooltip,
        child: widget,
      );
    }

    return widget;
  }
}
