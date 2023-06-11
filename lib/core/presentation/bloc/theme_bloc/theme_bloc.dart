import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:portfolio_web/core/styles/portfolio.theme.dart';
import 'package:universal_html/html.dart' as html;

part 'theme_event.dart';
part 'theme_state.dart';

part 'theme_bloc.freezed.dart';
part 'theme_bloc.g.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<_ManualThemeChange>(_onThemeChange);
    on<_SwitchSystemMode>(_onSwitchSystemMode);
  }

  void _onSwitchSystemMode(
    _SwitchSystemMode event,
    Emitter<ThemeState> emit,
  ) {
    if (state.followSystem == false) {
      final currentThemeMode = PortfolioTheme.getThemeMode();

      _setLocalStorageTheme(currentThemeMode);

      emit(state.copyWith(
        themeMode: currentThemeMode,
        followSystem: !state.followSystem,
      ));
    }
  }

  void _onThemeChange(
    _ManualThemeChange event,
    Emitter<ThemeState> emit,
  ) {
    _setLocalStorageTheme(event.themeMode);

    emit(state.copyWith(
      themeMode: event.themeMode,
      followSystem: false,
    ));
  }

  void _setLocalStorageTheme(ThemeMode themeMode) {
    html.window.localStorage['portfolio_theme'] = themeMode.name;
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    return ThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return state.toJson();
  }
}
