import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';

class TemperatureRealFeelWidget extends CustomPainter {
  TemperatureRealFeelWidget({required this.value});

  double value;

  @override
  void paint(Canvas canvas, Size size) {
    const radius = 35.0;
    final rect = Rect.fromCircle(center: Offset.zero, radius: radius);

    Paint paint({
      Color? color,
      Shader? shader,
      double? strokeWidth,
      PaintingStyle? paintingStyle,
      StrokeCap? strokeCap,
    }) {
      final paint = Paint()
        ..strokeCap = strokeCap ?? StrokeCap.round
        ..style = paintingStyle ?? PaintingStyle.stroke
        ..strokeWidth = strokeWidth ?? 5.0;
      if (color != null) paint.color = color;
      if (shader != null) paint.shader = shader;
      return paint;
    }

    canvas.rotate(pi / 2);

    canvas.rotate(-pi / 2);

    const coldTempStartAngle = 3 * pi / 4;
    const coldTempSweepAngle = 3 * pi / 4;

    const goodTempStartAngle = coldTempStartAngle + coldTempSweepAngle + 0.05;
    const goodTempSweepAngle = pi / 4;

    const hotTempStartAngle = coldTempStartAngle + coldTempSweepAngle + pi / 4;
    const hotTempSweepAngle = 2 * pi / 4;

    canvas.drawArc(
      rect,
      coldTempStartAngle,
      coldTempSweepAngle,
      false,
      paint(color: Colors.blue, strokeWidth: 5.0),
    );
    canvas.drawArc(
      rect,
      coldTempStartAngle + coldTempSweepAngle,
      0.05,
      false,
      paint(color: Colors.white, strokeWidth: 5.0, strokeCap: StrokeCap.butt),
    );
    canvas.drawArc(
      rect,
      goodTempStartAngle,
      goodTempSweepAngle,
      false,
      paint(color: Colors.green, strokeWidth: 5.0, strokeCap: StrokeCap.butt),
    );
    canvas.drawArc(
      rect,
      hotTempStartAngle,
      hotTempSweepAngle,
      false,
      paint(color: Colors.orange, strokeWidth: 5.0),
    );
    canvas.drawArc(
      rect,
      hotTempStartAngle - 0.1,
      0.05,
      false,
      paint(color: Colors.white, strokeWidth: 5.0, strokeCap: StrokeCap.butt),
    );

    canvas.drawCircle(
      Offset.zero,
      4,
      paint(
        color: Colors.black,
        paintingStyle: PaintingStyle.stroke,
        strokeWidth: 3,
      ),
    );

    const minTemp = -40;
    const minGoodTemp = 10;
    const maxGoodTemp = 25;
    const maxTemp = 50;

    double? valueStartAngle;
    double? valueSweepAngle;

    if (value < minTemp) {
      valueStartAngle = coldTempStartAngle;
      valueSweepAngle = 0;
    } else if (value >= minTemp && value < minGoodTemp) {
      valueStartAngle = coldTempStartAngle;
      valueSweepAngle = coldTempSweepAngle;
    } else if (value >= minGoodTemp && value <= maxGoodTemp) {
      valueStartAngle = goodTempStartAngle;
      valueSweepAngle = goodTempSweepAngle;
    } else if (value > maxGoodTemp && value <= maxTemp) {
      valueStartAngle = hotTempStartAngle;
      valueSweepAngle = hotTempSweepAngle;
    } else if (value > maxTemp) {
      valueStartAngle = hotTempStartAngle + hotTempSweepAngle;
      valueSweepAngle = 0;
    }

    if (valueStartAngle != null && valueSweepAngle != null) {
      double segmentMin, segmentMax;
      if (value < minGoodTemp) {
        segmentMin = minTemp.toDouble();
        segmentMax = minGoodTemp.toDouble();
      } else if (value <= maxGoodTemp) {
        segmentMin = minGoodTemp.toDouble();
        segmentMax = maxGoodTemp.toDouble();
      } else {
        segmentMin = maxGoodTemp.toDouble();
        segmentMax = maxTemp.toDouble();
      }

      final normalizedValue = (value - segmentMin) / (segmentMax - segmentMin);

      final pointAngle = valueStartAngle + normalizedValue * valueSweepAngle;

      final pointX = cos(pointAngle) * (radius - 10);
      final pointY = sin(pointAngle) * (radius - 10);

      canvas.drawLine(
        Offset.zero,
        Offset(pointX, pointY),
        paint(
          color: Colors.black,
          paintingStyle: PaintingStyle.stroke,
          strokeWidth: 3,
        ),
      );
    }
    canvas.drawCircle(
      Offset.zero,
      2,
      paint(
        color: Colors.white,
        paintingStyle: PaintingStyle.fill,
        strokeWidth: 3,
      ),
    );
  }

  @override
  bool shouldRepaint(TemperatureRealFeelWidget oldDelegate) => false;
}
