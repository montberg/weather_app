// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pressure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PressureModel _$PressureModelFromJson(Map<String, dynamic> json) =>
    PressureModel(
      metric: UnitValue.fromJson(json['Metric'] as Map<String, dynamic>),
      imperial: UnitValue.fromJson(json['Imperial'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PressureModelToJson(PressureModel instance) =>
    <String, dynamic>{
      'Metric': instance.metric,
      'Imperial': instance.imperial,
    };
