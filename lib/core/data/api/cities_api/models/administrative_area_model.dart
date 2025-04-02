import 'package:json_annotation/json_annotation.dart';

part 'administrative_area_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class AdministrativeArea {
  @JsonKey(name: 'ID')
  final String id;

  final String localizedName;

  AdministrativeArea({required this.id, required this.localizedName});

  factory AdministrativeArea.fromJson(Map<String, dynamic> json) =>
      _$AdministrativeAreaFromJson(json);

  Map<String, dynamic> toJson() => _$AdministrativeAreaToJson(this);
}
