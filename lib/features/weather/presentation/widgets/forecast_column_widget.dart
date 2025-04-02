import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_application/core/extensions/datetime_extension.dart';
import 'package:weather_application/features/weather/data/models/forecast/forecast_model.dart';

class ForecastColumnWidget extends StatelessWidget {
  const ForecastColumnWidget({
    super.key,
    required this.dailyForecast,
  });

  final DailyForecast dailyForecast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: dailyForecast.date.isToday
                ? Colors.amber.withOpacity(0.3)
                : null),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(dailyForecast.date.weekdayName),
              Text(DateFormat('dd.MM').format(dailyForecast.date)),
              Image(
                image: AssetImage(dailyForecast.day.weatherIconUri),
                height: 50,
              ),
              const Spacer(),
              Image(
                image: AssetImage(dailyForecast.night.weatherIconUri),
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
