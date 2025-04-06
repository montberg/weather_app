// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyForecastResponse _$DailyForecastResponseFromJson(
        Map<String, dynamic> json) =>
    DailyForecastResponse(
      dailyForecasts: (json['DailyForecasts'] as List<dynamic>)
          .map((e) => DailyForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyForecastResponseToJson(
        DailyForecastResponse instance) =>
    <String, dynamic>{
      'DailyForecasts': instance.dailyForecasts,
    };

DailyForecast _$DailyForecastFromJson(Map<String, dynamic> json) =>
    DailyForecast(
      date: _dateFromJson(json['Date'] as String),
      epochDate: (json['EpochDate'] as num).toInt(),
      temperature: TemperatureMaxMin.fromJson(
          json['Temperature'] as Map<String, dynamic>),
      day: DayNight.fromJson(json['Day'] as Map<String, dynamic>),
      night: DayNight.fromJson(json['Night'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DailyForecastToJson(DailyForecast instance) =>
    <String, dynamic>{
      'Date': instance.date.toIso8601String(),
      'EpochDate': instance.epochDate,
      'Temperature': instance.temperature,
      'Day': instance.day,
      'Night': instance.night,
    };

TemperatureMaxMin _$TemperatureMaxMinFromJson(Map<String, dynamic> json) =>
    TemperatureMaxMin(
      minimum: UnitValue.fromJson(json['Minimum'] as Map<String, dynamic>),
      maximum: UnitValue.fromJson(json['Maximum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemperatureMaxMinToJson(TemperatureMaxMin instance) =>
    <String, dynamic>{
      'Minimum': instance.minimum,
      'Maximum': instance.maximum,
    };

DayNight _$DayNightFromJson(Map<String, dynamic> json) => DayNight(
      icon: (json['Icon'] as num).toInt(),
      iconPhrase: json['IconPhrase'] as String,
      hasPrecipitation: json['HasPrecipitation'] as bool,
      precipitationType: json['PrecipitationType'] as String?,
      precipitationIntensity: json['PrecipitationIntensity'] as String?,
    );

Map<String, dynamic> _$DayNightToJson(DayNight instance) => <String, dynamic>{
      'Icon': instance.icon,
      'IconPhrase': instance.iconPhrase,
      'HasPrecipitation': instance.hasPrecipitation,
      'PrecipitationType': instance.precipitationType,
      'PrecipitationIntensity': instance.precipitationIntensity,
    };
