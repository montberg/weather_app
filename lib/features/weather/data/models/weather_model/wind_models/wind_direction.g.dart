// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_direction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindDirection _$WindDirectionFromJson(Map<String, dynamic> json) =>
    WindDirection(
      degrees: (json['Degrees'] as num).toInt(),
      localized: json['Localized'] as String,
      english: json['English'] as String,
    );

Map<String, dynamic> _$WindDirectionToJson(WindDirection instance) =>
    <String, dynamic>{
      'Degrees': instance.degrees,
      'Localized': instance.localized,
      'English': instance.english,
    };
