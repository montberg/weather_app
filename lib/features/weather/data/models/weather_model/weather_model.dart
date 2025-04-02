import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/weather_model/pressure_model/pressure_model.dart';
import 'package:weather_application/features/weather/data/models/weather_model/temperature_models/real_feel_temperature.dart';
import 'package:weather_application/features/weather/data/models/weather_model/temperature_models/temperature_model.dart';
import 'package:weather_application/features/weather/data/models/weather_model/wind_models/wind_model.dart';

part 'weather_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CurrentConditionsModel {
  final String? localObservationDateTime;

  final int? epochTime;

  final String? weatherText;

  final bool? hasPrecipitation;

  final String? precipitationType;

  final bool? isDayTime;

  final Temperature? temperature;

  @JsonKey(name: 'UVIndex')
  final int? uvIndex;

  @JsonKey(name: 'UVIndexText')
  final String? uvIndexText;

  final int? relativeHumidity;

  final RealFeelTemperature? realFeelTemperature;

  final WindModel? wind;

  final PressureModel? pressure;

  CurrentConditionsModel({
    required this.uvIndex,
    required this.uvIndexText,
    required this.relativeHumidity,
    required this.realFeelTemperature,
    required this.wind,
    required this.pressure,
    required this.localObservationDateTime,
    required this.epochTime,
    required this.weatherText,
    required this.hasPrecipitation,
    required this.precipitationType,
    required this.isDayTime,
    required this.temperature,
  });

  factory CurrentConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionsModelFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentConditionsModelToJson(this);
}
