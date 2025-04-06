import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/common_models/unit_value.dart';

part 'hourly_forecast_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class HourlyForecastResponse {
  final List<HourlyForecast> hourlyForecasts;

  HourlyForecastResponse({
    required this.hourlyForecasts,
  });

  factory HourlyForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyForecastResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.pascal)
class HourlyForecast {
  final DateTime dateTime;
  final int weatherIcon;
  final UnitValue temperature;

  HourlyForecast({
    required this.dateTime,
    required this.weatherIcon,
    required this.temperature,
  });

  factory HourlyForecast.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyForecastToJson(this);
}
