import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/unit_value.dart';

part 'wind_speed.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class WindSpeed {
  final UnitValue metric;
  final UnitValue imperial;

  WindSpeed({
    required this.metric,
    required this.imperial,
  });

  factory WindSpeed.fromJson(Map<String, dynamic> json) =>
      _$WindSpeedFromJson(json);

  Map<String, dynamic> toJson() => _$WindSpeedToJson(this);
}
