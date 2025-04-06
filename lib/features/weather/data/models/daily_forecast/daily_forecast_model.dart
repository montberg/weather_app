import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/core/utils/data_parser.dart';
import 'package:weather_application/features/weather/data/models/common_models/unit_value.dart';

part 'daily_forecast_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class DailyForecastResponse {
  final List<DailyForecast> dailyForecasts;

  DailyForecastResponse({
    required this.dailyForecasts,
  });

  factory DailyForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DailyForecastResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.pascal)
class DailyForecast {
  @JsonKey(fromJson: _dateFromJson)
  final DateTime date;
  final int epochDate;
  final TemperatureMaxMin temperature;
  final DayNight day;
  final DayNight night;

  DailyForecast({
    required this.date,
    required this.epochDate,
    required this.temperature,
    required this.day,
    required this.night,
  });

  factory DailyForecast.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastFromJson(json);

  Map<String, dynamic> toJson() => _$DailyForecastToJson(this);
}

DateTime _dateFromJson(String dateString) {
  return DataParser.dateFromJson(dateString);
}

@JsonSerializable(fieldRename: FieldRename.pascal)
class TemperatureMaxMin {
  final UnitValue minimum;
  final UnitValue maximum;

  TemperatureMaxMin({
    required this.minimum,
    required this.maximum,
  });

  factory TemperatureMaxMin.fromJson(Map<String, dynamic> json) =>
      _$TemperatureMaxMinFromJson(json);

  Map<String, dynamic> toJson() => _$TemperatureMaxMinToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.pascal)
class DayNight {
  final int icon;
  final String iconPhrase;
  final bool hasPrecipitation;
  final String? precipitationType;
  final String? precipitationIntensity;

  DayNight({
    required this.icon,
    required this.iconPhrase,
    required this.hasPrecipitation,
    this.precipitationType,
    this.precipitationIntensity,
  });

  String get weatherIconUri {
    return 'assets/weather_icons/$icon-s.png';
  }

  factory DayNight.fromJson(Map<String, dynamic> json) =>
      _$DayNightFromJson(json);

  Map<String, dynamic> toJson() => _$DayNightToJson(this);
}
