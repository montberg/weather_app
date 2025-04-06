import 'package:json_annotation/json_annotation.dart';

part 'unit_value.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class UnitValue {
  final double value;
  final String unit;
  final int unitType;

  UnitValue({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  ///converts value of pressure into mm of mercury
  double get mmOfMercury {
    assert(unit == 'mb');
    return value / 1.333;
  }

  factory UnitValue.fromJson(Map<String, dynamic> json) =>
      _$UnitValueFromJson(json);

  Map<String, dynamic> toJson() => _$UnitValueToJson(this);
}
