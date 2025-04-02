// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnitValue _$UnitValueFromJson(Map<String, dynamic> json) => UnitValue(
      value: (json['Value'] as num).toDouble(),
      unit: json['Unit'] as String,
      unitType: (json['UnitType'] as num).toInt(),
      phrase: json['Phrase'] as String?,
    );

Map<String, dynamic> _$UnitValueToJson(UnitValue instance) => <String, dynamic>{
      'Value': instance.value,
      'Unit': instance.unit,
      'UnitType': instance.unitType,
      'Phrase': instance.phrase,
    };
