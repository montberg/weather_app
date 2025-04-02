// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentConditionsModel _$CurrentConditionsModelFromJson(
        Map<String, dynamic> json) =>
    CurrentConditionsModel(
      uvIndex: (json['UVIndex'] as num?)?.toInt(),
      uvIndexText: json['UVIndexText'] as String?,
      relativeHumidity: (json['RelativeHumidity'] as num?)?.toInt(),
      realFeelTemperature: json['RealFeelTemperature'] == null
          ? null
          : RealFeelTemperature.fromJson(
              json['RealFeelTemperature'] as Map<String, dynamic>),
      wind: json['Wind'] == null
          ? null
          : WindModel.fromJson(json['Wind'] as Map<String, dynamic>),
      pressure: json['Pressure'] == null
          ? null
          : PressureModel.fromJson(json['Pressure'] as Map<String, dynamic>),
      localObservationDateTime: json['LocalObservationDateTime'] as String?,
      epochTime: (json['EpochTime'] as num?)?.toInt(),
      weatherText: json['WeatherText'] as String?,
      hasPrecipitation: json['HasPrecipitation'] as bool?,
      precipitationType: json['PrecipitationType'] as String?,
      isDayTime: json['IsDayTime'] as bool?,
      temperature: json['Temperature'] == null
          ? null
          : Temperature.fromJson(json['Temperature'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentConditionsModelToJson(
        CurrentConditionsModel instance) =>
    <String, dynamic>{
      'LocalObservationDateTime': instance.localObservationDateTime,
      'EpochTime': instance.epochTime,
      'WeatherText': instance.weatherText,
      'HasPrecipitation': instance.hasPrecipitation,
      'PrecipitationType': instance.precipitationType,
      'IsDayTime': instance.isDayTime,
      'Temperature': instance.temperature,
      'UVIndex': instance.uvIndex,
      'UVIndexText': instance.uvIndexText,
      'RelativeHumidity': instance.relativeHumidity,
      'RealFeelTemperature': instance.realFeelTemperature,
      'Wind': instance.wind,
      'Pressure': instance.pressure,
    };
