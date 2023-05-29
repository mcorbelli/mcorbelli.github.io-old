import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<_InitialSetup>(_onInitialSetup);
    on<_ManualThemeChange>(_onThemeChange);
    on<_SwitchSystemMode>(_onSwitchSystemMode);

    add(const ThemeEvent.initialSetup());
  }

  void _onInitialSetup(
    _InitialSetup event,
    Emitter<ThemeState> emit,
  ) {
    emit(state.copyWith(
      themeMode: _getCurrentThemeMode(),
    ));
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
}
