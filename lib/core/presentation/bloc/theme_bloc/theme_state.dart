part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(true) bool followSystem,
  }) = _ThemeState;

  ThemeMode get activeThemeMode {
    var currentThemeMode = themeMode;
    if (themeMode == ThemeMode.system) {
      currentThemeMode = PortfolioTheme.getThemeMode();
    }
    return currentThemeMode;
  }

  factory ThemeState.fromJson(Map<String, Object?> json) => _$ThemeStateFromJson(json);
}
