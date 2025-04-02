// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindModel _$WindModelFromJson(Map<String, dynamic> json) => WindModel(
      direction:
          WindDirection.fromJson(json['Direction'] as Map<String, dynamic>),
      speed: WindSpeed.fromJson(json['Speed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WindModelToJson(WindModel instance) => <String, dynamic>{
      'Direction': instance.direction,
      'Speed': instance.speed,
    };
