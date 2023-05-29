import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

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
      emit(state.copyWith(
        themeMode: _getCurrentThemeMode(),
        followSystem: !state.followSystem,
      ));
    }
  }

  void _onThemeChange(
    _ManualThemeChange event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(
      themeMode: event.themeMode,
      followSystem: false,
    ));
  }

  ThemeMode _getCurrentThemeMode() {
    final instance = SchedulerBinding.instance;
    final platform = instance.platformDispatcher;

    if (platform.platformBrightness == Brightness.light) {
      return ThemeMode.light;
    }

    return ThemeMode.dark;
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
