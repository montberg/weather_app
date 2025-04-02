import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/core/utils/data_parser.dart';
import 'package:weather_application/features/weather/data/models/unit_value.dart';

part 'forecast_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ForecastResponse {
  final Headline headline;
  final List<DailyForecast> dailyForecasts;

  ForecastResponse({
    required this.headline,
    required this.dailyForecasts,
  });

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.pascal)
class Headline {
  final String effectiveDate;
  final int effectiveEpochDate;
  final int severity;
  final String text;
  final String category;
  final String? endDate;
  final int? endEpochDate;
  final String mobileLink;
  final String link;

  Headline({
    required this.effectiveDate,
    required this.effectiveEpochDate,
    required this.severity,
    required this.text,
    required this.category,
    this.endDate,
    this.endEpochDate,
    required this.mobileLink,
    required this.link,
  });

  factory Headline.fromJson(Map<String, dynamic> json) =>
      _$HeadlineFromJson(json);

  Map<String, dynamic> toJson() => _$HeadlineToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.pascal)
class DailyForecast {
  @JsonKey(fromJson: _dateFromJson)
  final DateTime date;
  final int epochDate;
  final TemperatureMaxMin temperature;
  final DayNight day;
  final DayNight night;
  final List<String> sources;
  final String mobileLink;
  final String link;

  DailyForecast({
    required this.date,
    required this.epochDate,
    required this.temperature,
    required this.day,
    required this.night,
    required this.sources,
    required this.mobileLink,
    required this.link,
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
