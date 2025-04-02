// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_speed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindSpeed _$WindSpeedFromJson(Map<String, dynamic> json) => WindSpeed(
      metric: UnitValue.fromJson(json['Metric'] as Map<String, dynamic>),
      imperial: UnitValue.fromJson(json['Imperial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WindSpeedToJson(WindSpeed instance) => <String, dynamic>{
      'Metric': instance.metric,
      'Imperial': instance.imperial,
    };
