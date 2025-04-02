import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:weather_application/widgets/snack_bar/snack_bar_content.dart';

/// [TopSnackBar] used to show in-app notifications
class TopSnackBar {
  TopSnackBar._();

  static final TopSnackBar _instance = TopSnackBar._();

  factory TopSnackBar() => _instance;

  OverlayEntry? _previousEntry;

  void _onDismissed() {
    _previousEntry?.remove();
    _previousEntry = null;
  }

  /// Create notification on user action or app error
  /// [MessageType.success] - success action message
  /// [MessageType.warning],[MessageType.error] - message about warning or error
  void showSnackBarMessage({
    required BuildContext context,
    required String message,
    Duration displayDuration = const Duration(seconds: 5),
  }) {
    final entry = OverlayEntry(
      builder: (_) {
        return SnackBarContent(
          message: message,
          displayDuration: displayDuration,
          onDismissed: _onDismissed,
        );
      },
    );

    /// Check if previous message showed, close it
    if (_previousEntry?.mounted ?? false) {
      _onDismissed();
    }

    /// Show new message
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => Overlay.of(context).insert(entry),
    );

    (context as Element).markNeedsBuild();

    /// Save current showed message
    _previousEntry = entry;
  }
}
