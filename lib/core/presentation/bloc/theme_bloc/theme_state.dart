part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _ThemeState;

  ThemeMode get activeThemeMode {
    ThemeMode currentThemeMode = themeMode;

    if (themeMode == ThemeMode.system) {
      var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      currentThemeMode = (brightness == Brightness.dark) ? ThemeMode.dark : ThemeMode.light;
    }

    return currentThemeMode;
  }

  factory ThemeState.fromJson(Map<String, Object?> json) => _$ThemeStateFromJson(json);
}
