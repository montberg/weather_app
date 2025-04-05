import 'dart:math' as math;

import 'package:flutter/material.dart';

class PressureWidgetPainter extends CustomPainter {
  PressureWidgetPainter({required this.value});

  int value;

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 35.0;
    final center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCircle(center: center, radius: radius);

    const minPressure = 710;
    const maxPressure = 810;
    const startAngle = 3 * math.pi / 4;
    const sweepAngle = 3 * math.pi / 2;

    canvas.drawArc(
      rect,
      startAngle,
      sweepAngle,
      false,
      Paint()
        ..color = Colors.blue
        ..strokeWidth = 5
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke,
    );

    final normalizedValue = (value - minPressure) / (maxPressure - minPressure);
    final pressureAngle = startAngle + normalizedValue * sweepAngle;
    const tickLength = 10.0;
    final pointOnCircle = Offset(
      center.dx + (radius - tickLength / 2) * math.cos(pressureAngle),
      center.dy + (radius - tickLength / 2) * math.sin(pressureAngle),
    );

    final tickAngle = Offset(
      pointOnCircle.dx + tickLength * math.cos(pressureAngle),
      pointOnCircle.dy + tickLength * math.sin(pressureAngle),
    );

    canvas.drawLine(
      pointOnCircle,
      tickAngle,
      Paint()
        ..color = Colors.white
        ..strokeWidth = 6
        ..strokeCap = StrokeCap.round,
    );

    canvas.drawLine(
      pointOnCircle,
      tickAngle,
      Paint()
        ..color = Colors.blue
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round,
    );

    final textSpeedPainter = TextPainter(
      text: const TextSpan(
        text: 'mmHg',
        style: TextStyle(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    textSpeedPainter.paint(
        canvas, Offset(center.dx - textSpeedPainter.width / 2, radius / 2));

    if (value < 760) canvas.rotate(2 * math.pi / 2);

    const arrowLength = 15.0;
    const arrowWidth = 15.0;
    final path = Path();
    final tip = Offset(center.dx, center.dy - arrowLength);
    final leftBase =
        Offset(center.dx - arrowWidth / 2, center.dy + arrowLength / 3);
    final rightBase =
        Offset(center.dx + arrowWidth / 2, center.dy + arrowLength / 3);

    path.moveTo(tip.dx, tip.dy);
    path.lineTo(leftBase.dx, leftBase.dy);
    path.lineTo(rightBase.dx, rightBase.dy);
    path.close();

    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.blue
        ..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(PressureWidgetPainter oldDelegate) => false;
}
