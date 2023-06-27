import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logzilla/logzilla.dart';
import 'package:colorize/colorize.dart';

/// BlocObserver is a abstract class for monitoring BloC instances behavior.
/// This means we can track anytime an event is triggered or a state is emitted.
/// And in the instance of Debugging the BloC, I believe this is incredible.

class AppBlocObserver extends BlocObserver {
  late Logzilla _logger;

  AppBlocObserver() {
    _logger = const Logzilla('AppBlocObserver');
  }

  /// As the name suggests whenever an event is added to the Bloc this method is triggered.
  /// It is also a great spot to add logging/analytics at the individual Bloc level.

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logger.custom(
      '<<<EVENT>>> $event',
      msgStyles: [
        Styles.CYAN,
      ],
    );

    super.onEvent(bloc, event);
  }

  /// To track a bloc's error whenever it happens, just override the
  /// onError function within your bloc. onError is called whenever an error
  /// occurs and notifies BlocObserver.onError.

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.custom(
      '<<<ERROR>>> $error',
      msgStyles: [
        Styles.RED,
      ],
    );

    super.onError(bloc, error, stackTrace);
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
    _logger.custom(
      '<<<CHANGE>>> $change',
      msgStyles: [
        Styles.GREEN,
      ],
    );

    super.onChange(bloc, change);
  }

  /// If you want to observe a bloc whenever a new event is added and a new state is added,
  /// you can override onTransition method. A transition occurs when a new event is added and a new
  /// state is emitted from a corresponding EventHandler executed.
  ///
  ///  - onTransition is called before a Bloc's state has been updated. Which is why it is a great
  ///       spot to add logging/analytics at the individual Bloc level.

  @override
  void onTransition(Bloc bloc, Transition transition) {
    _logger.custom(
      '<<<TRANSITION>>> $transition',
      msgStyles: [
        Styles.YELLOW,
      ],
    );

    super.onTransition(bloc, transition);
  }
}
