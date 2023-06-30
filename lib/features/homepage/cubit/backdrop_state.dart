part of 'backdrop_cubit.dart';

@freezed
class BackdropState with _$BackdropState {
  const factory BackdropState({
    @Default(false) bool isRevealed,
  }) = _BackdropState;
}
