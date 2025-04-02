// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_feel_temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealFeelTemperature _$RealFeelTemperatureFromJson(Map<String, dynamic> json) =>
    RealFeelTemperature(
      metric: UnitValue.fromJson(json['Metric'] as Map<String, dynamic>),
      imperial: UnitValue.fromJson(json['Imperial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RealFeelTemperatureToJson(
        RealFeelTemperature instance) =>
    <String, dynamic>{
      'Metric': instance.metric,
      'Imperial': instance.imperial,
    };
