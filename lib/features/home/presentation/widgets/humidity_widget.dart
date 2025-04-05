import 'dart:math';

import 'package:flutter/material.dart';

class HumidityWidgetPainter extends CustomPainter {
  HumidityWidgetPainter({required this.value});

  int value;

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 35.0;
    final rect = Rect.fromCircle(center: Offset.zero, radius: radius);

    Paint paint({
      Color? color,
      Shader? shader,
      double? strokeWidth,
      PaintingStyle? paintingStyle,
    }) {
      final paint = Paint()
        ..strokeCap = StrokeCap.round
        ..style = paintingStyle ?? PaintingStyle.stroke
        ..strokeWidth = strokeWidth ?? 5.0;
      if (color != null) paint.color = color;
      if (shader != null) paint.shader = shader;
      return paint;
    }

    canvas.rotate(pi / 2);
    canvas.drawArc(
      rect,
      pi / 4,
      3 * pi / 2,
      false,
      paint(color: Colors.grey.withOpacity(0.5)),
    );

    const maxValue = 100;
    const startAngle = pi / 4;
    const sweepAngle = 3 * pi / 2;
    final progressAngle = sweepAngle * (value / maxValue);

    canvas.drawArc(
      rect,
      startAngle,
      progressAngle,
      false,
      paint(color: Colors.blue, strokeWidth: 5.0),
    );
    canvas.rotate(-pi / 2);

    canvas.drawCircle(Offset.zero, 7,
        paint(color: Colors.blue, paintingStyle: PaintingStyle.fill));
    canvas.drawLine(const Offset(-4, 0), const Offset(0, -10),
        paint(color: Colors.blue, paintingStyle: PaintingStyle.fill));
    canvas.drawLine(const Offset(4, 0), const Offset(0, -10),
        paint(color: Colors.blue, paintingStyle: PaintingStyle.fill));
  }

  @override
  bool shouldRepaint(HumidityWidgetPainter oldDelegate) => false;
}
