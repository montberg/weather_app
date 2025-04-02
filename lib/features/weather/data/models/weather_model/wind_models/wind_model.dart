import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/weather_model/wind_models/wind_direction.dart';
import 'package:weather_application/features/weather/data/models/weather_model/wind_models/wind_speed.dart';

part 'wind_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class WindModel {
  final WindDirection direction;
  final WindSpeed speed;

  WindModel({
    required this.direction,
    required this.speed,
  });

  factory WindModel.fromJson(Map<String, dynamic> json) =>
      _$WindModelFromJson(json);

  Map<String, dynamic> toJson() => _$WindModelToJson(this);
}
