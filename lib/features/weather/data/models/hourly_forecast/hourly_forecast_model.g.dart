// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyForecastResponse _$HourlyForecastResponseFromJson(
        Map<String, dynamic> json) =>
    HourlyForecastResponse(
      hourlyForecasts: (json['HourlyForecasts'] as List<dynamic>)
          .map((e) => HourlyForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HourlyForecastResponseToJson(
        HourlyForecastResponse instance) =>
    <String, dynamic>{
      'HourlyForecasts': instance.hourlyForecasts,
    };

HourlyForecast _$HourlyForecastFromJson(Map<String, dynamic> json) =>
    HourlyForecast(
      dateTime: DateTime.parse(json['DateTime'] as String),
      weatherIcon: (json['WeatherIcon'] as num).toInt(),
      temperature:
          UnitValue.fromJson(json['Temperature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourlyForecastToJson(HourlyForecast instance) =>
    <String, dynamic>{
      'DateTime': instance.dateTime.toIso8601String(),
      'WeatherIcon': instance.weatherIcon,
      'Temperature': instance.temperature,
    };
