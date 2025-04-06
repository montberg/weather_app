import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/common_models/unit_value.dart';

part 'real_feel_temperature.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class RealFeelTemperature {
  final UnitValue metric;
  final UnitValue imperial;

  RealFeelTemperature({
    required this.metric,
    required this.imperial,
  });

  factory RealFeelTemperature.fromJson(Map<String, dynamic> json) =>
      _$RealFeelTemperatureFromJson(json);

  Map<String, dynamic> toJson() => _$RealFeelTemperatureToJson(this);
}
