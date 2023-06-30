import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'backdrop_state.dart';

part 'backdrop_cubit.freezed.dart';

class BackdropCubit extends Cubit<BackdropState> {
  late GlobalKey<BackdropScaffoldState> _backdropKey;

  BackdropCubit() : super(const BackdropState()) {
    _backdropKey = GlobalKey<BackdropScaffoldState>();
  }

  GlobalKey<BackdropScaffoldState> get backdropKey {
    return _backdropKey;
  }

  /// Toggles the backdrop functionality.
  ///
  /// If the back layer was concealed, it is animated to the "revealed" state
  /// by this function. If it was revealed, this function will animate it to
  /// the "concealed" state.

  void fling() {
    _backdropKey.currentState?.fling();

    final bdState = _backdropKey.currentState;
    final bgRevealed = bdState?.isBackLayerRevealed;

    emit(state.copyWith(
      isRevealed: bgRevealed ?? false,
    ));
  }

  /// Hides the back layer if it is currently revealed.
  ///
  /// This function checks if the back layer is currently in the "revealed" state.
  /// If it is, the function calls `fling` to transition it to the "concealed" state,
  /// effectively hiding the back layer. If the back layer is already concealed, this function
  /// does nothing.
  ///
  /// This is useful in scenarios where you want to ensure that the back layer is hidden
  /// regardless of its current state.

  void hide() {
    if (state.isRevealed) {
      fling();
    }
  }

  @override
  Future<void> close() {
    _backdropKey.currentState?.dispose();
    return super.close();
  }
}
