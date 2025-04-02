// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Temperature _$TemperatureFromJson(Map<String, dynamic> json) => Temperature(
      metric: UnitValue.fromJson(json['Metric'] as Map<String, dynamic>),
      imperial: UnitValue.fromJson(json['Imperial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemperatureToJson(Temperature instance) =>
    <String, dynamic>{
      'Metric': instance.metric,
      'Imperial': instance.imperial,
    };
