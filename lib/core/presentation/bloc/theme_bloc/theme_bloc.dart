import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:portfolio_web/core/constants/storage.const.dart';
import 'package:portfolio_web/core/data/repositories/storage.repository.dart';

part 'theme_event.dart';
part 'theme_state.dart';

part 'theme_bloc.freezed.dart';
part 'theme_bloc.g.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  late final StorageRepository _storageRepo;

  ThemeBloc(
    this._storageRepo,
  ) : super(const ThemeState()) {
    on<_ManualThemeChange>(_onManualThemeChange);

    if (state.themeMode == ThemeMode.system) {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(state.copyWith(
        themeMode: state.activeThemeMode,
      ));
    }
  }

  void _onManualThemeChange(
    _ManualThemeChange event,
    Emitter<ThemeState> emit,
  ) {
    ThemeMode currentThemeMode = event.themeMode;

    if (currentThemeMode == ThemeMode.system) {
      _storageRepo.local.remove(StorageConst.theme);
    } else {
      _storageRepo.local.insert(StorageConst.theme, currentThemeMode.name);
    }

    emit(state.copyWith(
      themeMode: currentThemeMode,
    ));
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
