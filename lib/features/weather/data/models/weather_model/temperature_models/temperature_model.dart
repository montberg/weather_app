import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/unit_value.dart';

part 'temperature_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Temperature {
  final UnitValue metric;

  final UnitValue imperial;

  Temperature({required this.metric, required this.imperial});

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);

  Map<String, dynamic> toJson() => _$TemperatureToJson(this);
}
