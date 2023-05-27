import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_action.model.freezed.dart';

@freezed
class ThemeAction with _$ThemeAction {
  const factory ThemeAction({
    required ThemeMode themeMode,
    required String tooltip,
    required IconData icon,
    Color? color,
  }) = _ThemeAction;
}
