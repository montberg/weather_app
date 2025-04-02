import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Country {
  @JsonKey(name: "ID")
  final String id;

  final String localizedName;

  Country({required this.id, required this.localizedName});

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
