import 'dart:math' as math;

import 'package:flutter/material.dart';

class WindRosePainter extends CustomPainter {
  final double windDirection;
  final bool isMetric;

  WindRosePainter({required this.windDirection, required this.isMetric});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    const radius = 35.0;
    const arrowLength = 33.0;
    const arrowCircleRadius = 15.0;
    const smallCircleRadius = 3.0;

    // Рисуем серые сегменты розы ветров (16 сегментов)
    final segmentPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.fill;

    for (int i = 0; i < 100; i++) {
      final startAngle = (i * math.pi / 30) - math.pi / 2;
      const sweepAngle = math.pi / 100;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        segmentPaint,
      );
    }

    final segmentCirclePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius - 5, segmentCirclePaint);

    const cardinalAngles = [0.0, 90.0, 180.0, 270.0];
    const cardinalLabels = ['N', 'E', 'S', 'W'];

    for (int i = 0; i < 4; i++) {
      final angle = cardinalAngles[i] * math.pi / 180;

      final textPainter = TextPainter(
        text: TextSpan(
          text: cardinalLabels[i],
          style: const TextStyle(color: Colors.black, fontSize: 10),
        ),
        textDirection: TextDirection.ltr,
      )..layout();

      final textOffset = Offset(
        center.dx + (radius - 10) * math.cos(angle) - textPainter.width / 2,
        center.dy + (radius - 10) * math.sin(angle) - textPainter.height / 2,
      );
      textPainter.paint(canvas, textOffset);
    }

    final arrowPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final directionRad = (windDirection - 90) * math.pi / 180;

    canvas.drawCircle(center, arrowCircleRadius, arrowPaint);

    final arrowEnd = Offset(
      center.dx + arrowLength * math.cos(directionRad),
      center.dy + arrowLength * math.sin(directionRad),
    );
    final arrowStart = Offset(
      center.dx - arrowLength * math.cos(directionRad),
      center.dy - arrowLength * math.sin(directionRad),
    );

    canvas.drawLine(
      arrowStart,
      arrowEnd,
      Paint()
        ..color = Colors.blue
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke,
    );

    canvas.drawCircle(
      arrowStart,
      smallCircleRadius,
      Paint()
        ..color = Colors.blue
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );
    canvas.drawCircle(
        arrowStart,
        smallCircleRadius - 0.6,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill);

    final path = Path();
    final tip1 = Offset(
      arrowEnd.dx + 8 * math.cos(directionRad + math.pi * 0.8),
      arrowEnd.dy + 8 * math.sin(directionRad + math.pi * 0.8),
    );
    final tip2 = Offset(
      arrowEnd.dx + 8 * math.cos(directionRad - math.pi * 0.8),
      arrowEnd.dy + 8 * math.sin(directionRad - math.pi * 0.8),
    );
    path.moveTo(arrowEnd.dx, arrowEnd.dy);
    path.lineTo(tip1.dx, tip1.dy);
    path.lineTo(tip2.dx, tip2.dy);
    path.close();
    canvas.drawPath(path, arrowPaint);

    final textSpeedPainter = TextPainter(
      text: TextSpan(
        text: isMetric ? 'km/h' : 'mph',
        style: const TextStyle(color: Colors.white, fontSize: 10),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    textSpeedPainter.paint(
        canvas,
        Offset(center.dx - textSpeedPainter.width / 2,
            center.dy - textSpeedPainter.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
