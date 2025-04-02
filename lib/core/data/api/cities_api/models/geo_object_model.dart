import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/core/data/api/cities_api/models/administrative_area_model.dart';
import 'package:weather_application/core/data/api/cities_api/models/country_model.dart';

part 'geo_object_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class GeoObject {
  final String key;

  final String localizedName;
  final Country country;

  final String type;

  @JsonKey(name: "AdministrativeArea")
  final AdministrativeArea administrativeArea;

  GeoObject({
    required this.key,
    required this.localizedName,
    required this.country,
    required this.type,
    required this.administrativeArea,
  });

  bool get isCity => type == 'City';

  factory GeoObject.fromJson(Map<String, dynamic> json) =>
      _$GeoObjectFromJson(json);

  Map<String, dynamic> toJson() => _$GeoObjectToJson(this);
}
