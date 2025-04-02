import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_application/widgets/snack_bar/snack_bar.dart';

/// The basic implementation of the entity responsible for all
/// presentation logic
///
/// Example:
/// ```dart
/// class ExampleLogic = _ExampleLogic with _$ExampleLogic;
///
///abstract class _ExampleLogic extends LogicBase with Store {
///
///   @override
/// void init(BuildContext context) {
///    super.init(context);
///    _loadData(context);
///  }
///
/// @override
/// void dispose(BuildContext context) {
///     super.dispose(context);
///     // Dispose something...
///   }
///
/// void _loadData(BuildContext context) {
///  // Initial state initialization
/// }
///
/// }
/// ```
abstract class LogicBase {
  /// [init] is called only once for lifecycle of the [LogicBase] in the really
  /// beginning before the first build via [LogicLoader]
  ///
  /// It can be used for initiate a starting state of the [LogicBase].
  @protected
  @mustCallSuper
  @visibleForTesting
  void init(BuildContext context) {}

  /// [dispose] called when [LogicBase] is going to be permanently destroyed.
  @protected
  @mustCallSuper
  @visibleForTesting
  void dispose(BuildContext context) {}

  /// [showSnackBar] can be used for showing SnackBar messages
  @mustCallSuper
  void showSnackBar(
    BuildContext context, {
    required String message,
  }) {
    if (context.mounted) {
      TopSnackBar().showSnackBarMessage(
        context: context,
        message: message,
      );
    }
  }
}

/// Example:
/// LogicProvider(
///    create: (context) => ExampleLogic(),
///    builder: (context, logic) => Text('something')
///);
///```
class LogicProvider<T extends LogicBase> extends StatefulWidget {
  const LogicProvider({
    super.key,
    required this.create,
    this.child,
    this.builder,
  }) : assert(
          builder != null || child != null,
          '[LogicProvider.builder] or [LogicProvider.child] must not be null',
        );

  final T Function(BuildContext) create;

  final Widget? child;

  final Widget Function(BuildContext, T)? builder;

  @override
  State<LogicProvider<T>> createState() => _LogicProviderState<T>();
}

class _LogicProviderState<T extends LogicBase> extends State<LogicProvider<T>> {
  late final T _logic;

  @override
  void initState() {
    super.initState();
    _logic = widget.create(context);
  }

  @override
  Widget build(BuildContext context) {
    return Provider<T>(
      lazy: false,
      create: (_) => _logic..init(context),
      dispose: (_, logic) => logic.dispose(context),
      builder: (context, _) =>
          widget.child ?? widget.builder!.call(context, _logic),
    );
  }
}
