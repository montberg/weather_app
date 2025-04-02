// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoObject _$GeoObjectFromJson(Map<String, dynamic> json) => GeoObject(
      key: json['Key'] as String,
      localizedName: json['LocalizedName'] as String,
      country: Country.fromJson(json['Country'] as Map<String, dynamic>),
      type: json['Type'] as String,
      administrativeArea: AdministrativeArea.fromJson(
          json['AdministrativeArea'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeoObjectToJson(GeoObject instance) => <String, dynamic>{
      'Key': instance.key,
      'LocalizedName': instance.localizedName,
      'Country': instance.country,
      'Type': instance.type,
      'AdministrativeArea': instance.administrativeArea,
    };
