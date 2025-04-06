import 'package:json_annotation/json_annotation.dart';
import 'package:weather_application/features/weather/data/models/common_models/unit_value.dart';

part 'pressure_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class PressureModel {
  final UnitValue metric;
  final UnitValue imperial;

  PressureModel({
    required this.metric,
    required this.imperial,
  });

  factory PressureModel.fromJson(Map<String, dynamic> json) =>
      _$PressureModelFromJson(json);

  Map<String, dynamic> toJson() => _$PressureModelToJson(this);
}
