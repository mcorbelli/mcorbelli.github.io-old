import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// BlocObserver is a abstract class for monitoring BloC instances behavior.
/// This means we can track anytime an event is triggered or a state is emitted.
/// And in the instance of Debugging the BloC, I believe this is incredible.

class AppBlocObserver extends BlocObserver {
  /// As the name suggests whenever an event is added to the Bloc this method is triggered.
  /// It is also a great spot to add logging/analytics at the individual Bloc level.

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('\u001b[1;36m<<<EVENT>>> $event');
  }

  /// To track a bloc's error whenever it happens, just override the
  /// onError function within your bloc. onError is called whenever an error
  /// occurs and notifies BlocObserver.onError.

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('\u001b[1;31m<<<ERROR>>> $error [$stackTrace]');
  }

  /// You must override the onChange method inside your bloc in order
  /// to see the change when a new state is emitted.
  ///
  /// - A Change represents the change from one State to another.
  /// - A Change consists of the currentState and nextState.
  /// - Now whenever a new state is emitted a Change occurs, which is why onChange
  ///      is a great spot to add logging/analytics for a specific cubit.

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('\u001b[1;32m<<<CHANGE>>> $change');
  }

  /// If you want to observe a bloc whenever a new event is added and a new state is added,
  /// you can override onTransition method. A transition occurs when a new event is added and a new
  /// state is emitted from a corresponding EventHandler executed.
  ///
  ///  - onTransition is called before a Bloc's state has been updated. Which is why it is a great
  ///       spot to add logging/analytics at the individual Bloc level.

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('\u001b[1;33m<<<TRANSITION>>> $transition');
  }
}
