part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.initialSetup() = _InitialSetup;
  const factory ThemeEvent.manualThemeChange(ThemeMode themeMode) = _ManualThemeChange;
  const factory ThemeEvent.switchSystemMode() = _SwitchSystemMode;
}
