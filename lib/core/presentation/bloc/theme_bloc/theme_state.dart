part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(true) bool followSystem,
  }) = _ThemeState;

  factory ThemeState.fromJson(Map<String, Object?> json) => _$ThemeStateFromJson(json);
}
