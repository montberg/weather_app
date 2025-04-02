import 'package:json_annotation/json_annotation.dart';

part 'wind_direction.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class WindDirection {
  final int degrees;
  final String localized;
  final String english;

  WindDirection({
    required this.degrees,
    required this.localized,
    required this.english,
  });

  factory WindDirection.fromJson(Map<String, dynamic> json) =>
      _$WindDirectionFromJson(json);

  Map<String, dynamic> toJson() => _$WindDirectionToJson(this);
}
