import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(ThemeMode.system)) {
    on<_ThemeChange>(_onThemeChange);
  }

  void _onThemeChange(
    _ThemeChange event,
    Emitter<ThemeState> emit,
  ) {
    emit(ThemeState(event.mode));
  }
}
