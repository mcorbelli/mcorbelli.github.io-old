import 'package:colorize/colorize.dart';
import 'package:flutter/foundation.dart';

/// A utility class to handle logging with different
/// levels and styling.

class Logzilla {
  const Logzilla(this.name);

  final String name;

  /// Styles a [text] with the given [styles]
  /// and returns a `Colorize` object.

  Colorize _styledString(
    String text,
    List<Styles> styles,
  ) {
    final styledText = Colorize(text);
    for (var style in styles) {
      styledText.apply(style);
    }
    return styledText;
  }

  /// Logs a [message] with optional [prefixStyles]
  /// and [msgStyles].

  void _log(
    Object? message, {
    List<Styles> prefixStyles = const [],
    List<Styles> msgStyles = const [],
  }) {
    final styledName = _styledString(name, prefixStyles);
    final styledMessage = _styledString(message.toString(), msgStyles);

    debugPrint('[$styledName]: $styledMessage');
  }

  /// Logs an info-level [message].

  void info(Object? message) {
    _log(
      message,
      msgStyles: [
        Styles.WHITE,
      ],
    );
  }

  /// Logs a debug-level [message].

  void debug(Object? message) {
    _log(
      message,
      msgStyles: [
        Styles.LIGHT_BLUE,
      ],
      prefixStyles: [
        Styles.BOLD,
      ],
    );
  }

  /// Logs a warning-level [message].

  void warning(Object? message) {
    _log(
      message,
      msgStyles: [
        Styles.YELLOW,
      ],
      prefixStyles: [
        Styles.BOLD,
      ],
    );
  }

  /// Logs an error-level [message] along
  /// with the [stackTrace].

  void error(
    Object? message,
    StackTrace stackTrace,
  ) {
    _log(
      message,
      msgStyles: [
        Styles.RED,
      ],
      prefixStyles: [
        Styles.BOLD,
        Styles.BLINK,
      ],
    );
  }

  /// Logs a [message] with custom [prefixStyles]
  /// and [msgStyles].

  void custom(
    Object? message, {
    List<Styles> msgStyles = const [],
    List<Styles> prefixStyles = const [],
  }) {
    _log(
      message,
      msgStyles: msgStyles,
      prefixStyles: prefixStyles,
    );
  }
}
