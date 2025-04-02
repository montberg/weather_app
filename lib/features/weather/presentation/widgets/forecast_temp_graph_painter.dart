import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:weather_application/core/utils/painter_helpers.dart';
import 'package:weather_application/features/weather/data/models/forecast/forecast_model.dart';

class ForecastTempGraphPainter extends CustomPainter {
  ForecastTempGraphPainter({required this.forecast});

  final List<DailyForecast> forecast;

  @override
  void paint(Canvas canvas, Size size) {
    if (forecast.isEmpty) return;
    const columnCenterOffset = 45.0;

    const startOffset = 130.0;

    const endOffset = 410.0;

    final maxTemp =
        forecast.map((e) => e.temperature.maximum.value).reduce(max);

    final minTemp =
        forecast.map((e) => e.temperature.minimum.value).reduce(min);

    for (var i = 1; i < forecast.length + 1; i++) {
      //day time
      //draw line from (i+1) point to (i) point checking if i != last one

      final currentDxOffset = 2 * columnCenterOffset * (i) + columnCenterOffset;
      final previousDxOffset =
          2 * columnCenterOffset * (i - 1) + columnCenterOffset;

      final previousPointMaxTemp = forecast[i - 1].temperature.maximum.value;
      final previousPointMinTemp = forecast[i - 1].temperature.minimum.value;

      if (i != forecast.length) {
        final currentPointMaxTemp = forecast[i].temperature.maximum.value;
        canvas.drawLine(
          Offset(
            currentDxOffset,
            PainterHelper.scaledX(
                currentPointMaxTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          Offset(
            previousDxOffset,
            PainterHelper.scaledX(
                previousPointMaxTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          Paint()
            ..color = Colors.black
            ..strokeWidth = 2.0,
        );
      }

      //draw circle outline
      canvas.drawCircle(
          Offset(
            previousDxOffset,
            PainterHelper.scaledX(
                previousPointMaxTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          4.0,
          Paint()
            ..color = Colors.black
            ..style = PaintingStyle.fill);

      //draw circle
      canvas.drawCircle(
          Offset(
            previousDxOffset,
            PainterHelper.scaledX(
                previousPointMaxTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          3.0,
          Paint()
            ..color = Colors.white
            ..style = PaintingStyle.fill);

      //draw temp text
      ui.ParagraphStyle maxTempParagraphStyle = ui.ParagraphStyle(fontSize: 16);
      ui.ParagraphBuilder maxTempBuilder =
          ui.ParagraphBuilder(maxTempParagraphStyle);
      ui.TextStyle maxTempTextStyle = ui.TextStyle(color: Colors.black);
      maxTempBuilder.pushStyle(maxTempTextStyle);
      maxTempBuilder.addText(
        '${forecast[i - 1].temperature.maximum.value} ${forecast[i - 1].temperature.maximum.unit}',
      );
      ui.Paragraph maxTempParagraph = maxTempBuilder.build();
      maxTempParagraph.layout(ui.ParagraphConstraints(width: size.width));
      canvas.drawParagraph(
          maxTempParagraph,
          Offset(
              previousDxOffset - maxTempParagraph.maxIntrinsicWidth / 2,
              PainterHelper.scaledX(previousPointMaxTemp, startOffset,
                      endOffset, minTemp, maxTemp) -
                  30));

      //nighttime
      //draw line from (i+1) point to (i) point checking if i != last one
      if (i != forecast.length) {
        final currentPointMinTemp = forecast[i].temperature.minimum.value;
        canvas.drawLine(
          Offset(
            currentDxOffset,
            PainterHelper.scaledX(
                currentPointMinTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          Offset(
            previousDxOffset,
            PainterHelper.scaledX(
                previousPointMinTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          Paint()
            ..color = Colors.black
            ..strokeWidth = 2.0,
        );
      }

      //draw circle outline
      canvas.drawCircle(
          Offset(
            previousDxOffset,
            PainterHelper.scaledX(
                previousPointMinTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          4.0,
          Paint()
            ..color = Colors.black
            ..style = PaintingStyle.fill);

      //draw circle
      canvas.drawCircle(
          Offset(
            previousDxOffset,
            PainterHelper.scaledX(
                previousPointMinTemp, startOffset, endOffset, minTemp, maxTemp),
          ),
          3.0,
          Paint()
            ..color = Colors.white
            ..style = PaintingStyle.fill);

      //draw temp text
      ui.ParagraphStyle minTempParagraphStyle = ui.ParagraphStyle(fontSize: 16);
      ui.ParagraphBuilder minTempBuilder =
          ui.ParagraphBuilder(minTempParagraphStyle);
      ui.TextStyle minTempTextStyle = ui.TextStyle(color: Colors.black);
      minTempBuilder.pushStyle(minTempTextStyle);
      minTempBuilder.addText(
        '${forecast[i - 1].temperature.minimum.value} ${forecast[i - 1].temperature.minimum.unit}',
      );
      ui.Paragraph minTempParagraph = minTempBuilder.build();
      minTempParagraph.layout(ui.ParagraphConstraints(width: size.width));
      canvas.drawParagraph(
        minTempParagraph,
        Offset(
          previousDxOffset - minTempParagraph.maxIntrinsicWidth / 2,
          PainterHelper.scaledX(previousPointMinTemp, startOffset, endOffset,
                  minTemp, maxTemp) +
              10,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(ForecastTempGraphPainter oldDelegate) => false;
}
