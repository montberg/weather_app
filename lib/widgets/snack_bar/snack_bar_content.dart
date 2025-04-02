import 'dart:async';

import 'package:flutter/material.dart';

class SnackBarContent extends StatefulWidget {
  const SnackBarContent({
    super.key,
    required this.message,
    required this.displayDuration,
    required this.onDismissed,
  });

  final String message;
  final Duration displayDuration;
  final Function onDismissed;

  @override
  State<SnackBarContent> createState() => _SnackBarContentState();
}

class _SnackBarContentState extends State<SnackBarContent>
    with TickerProviderStateMixin {
  final Color backgroundColor = const Color(0xffED4337);
  final Color contentColor = Colors.white;

  Timer? timer;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    timer = Timer.periodic(widget.displayDuration, (timer) async {
      if (mounted) {
        await _controller.reverse();
        widget.onDismissed.call();
      }
    });
    _controller = AnimationController(vsync: this, duration: Durations.short2);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Positioned(
      top: 16,
      left: 16,
      right: 16,
      child: SafeArea(
        child: Dismissible(
          key: const ValueKey('dismissibleSnackBar'),
          confirmDismiss: (direction) async {
            if (!mounted) {
              return false;
            }
            if (direction == DismissDirection.startToEnd ||
                direction == DismissDirection.endToStart) {
              widget.onDismissed.call();
            }
            return false;
          },
          child: FadeTransition(
            opacity: _animation,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(
                      Icons.error,
                      size: 20,
                      color: contentColor,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        widget.message,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                              color: contentColor,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
