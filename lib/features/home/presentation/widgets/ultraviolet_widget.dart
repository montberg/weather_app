import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class UltravioletWidgetPainter extends CustomPainter {
  UltravioletWidgetPainter({required this.value});

  int value;

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 35.0;
    final rect = Rect.fromCircle(center: Offset.zero, radius: radius);

    final shader = ui.Gradient.sweep(
      Offset.zero,
      [
        Colors.green,
        Colors.yellow,
        Colors.orange,
        Colors.red,
        const Color.fromARGB(255, 225, 0, 255),
      ],
      [0.0, 0.25, 0.5, 0.75, 1.0],
      TileMode.clamp,
      pi / 2,
      3 * pi / 2,
    );

    Paint paint({
      Color? color,
      Shader? shader,
    }) {
      final paint = Paint()
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5.0;
      if (color != null) paint.color = color;
      if (shader != null) paint.shader = shader;
      return paint;
    }

    canvas.rotate(90 * pi / 180);
    canvas.drawArc(rect, pi / 4, 3 * pi / 2, false, paint(shader: shader));

    const maxValue = 12;
    const startAngle = pi / 4;
    const sweepAngle = 3 * pi / 2;
    final normalizedValue = value / maxValue;
    final pointAngle = startAngle + sweepAngle * normalizedValue;

    final pointX = cos(pointAngle) * radius;
    final pointY = sin(pointAngle) * radius;

    canvas.drawCircle(
      Offset(pointX, pointY),
      4,
      paint(color: Colors.white),
    );

    canvas.drawCircle(
      Offset(pointX, pointY),
      2,
      paint(shader: shader),
    );

    canvas.rotate(-90 * pi / 180);
    ui.ParagraphStyle minTempParagraphStyle = ui.ParagraphStyle(fontSize: 27);
    ui.ParagraphBuilder minTempBuilder =
        ui.ParagraphBuilder(minTempParagraphStyle);
    ui.TextStyle minTempTextStyle = ui.TextStyle(color: Colors.black);
    minTempBuilder.pushStyle(minTempTextStyle);
    minTempBuilder.addText('$value');
    ui.Paragraph minTempParagraph = minTempBuilder.build();
    minTempParagraph.layout(ui.ParagraphConstraints(width: size.width));
    canvas.drawParagraph(
      minTempParagraph,
      const Offset(-7, -15),
    );
  }

  @override
  bool shouldRepaint(UltravioletWidgetPainter oldDelegate) => false;
}
