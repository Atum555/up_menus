import 'package:json_annotation/json_annotation.dart';

part 'allergen.g.dart';

@JsonSerializable()
class Allergen {
  int id;
  @JsonKey(name: 'name_pt')
  String namePt;
  @JsonKey(name: 'name_en')
  String nameEn;
  String color;
  String icon;

  Allergen({
    required this.id,
    required this.namePt,
    required this.nameEn,
    required this.color,
    required this.icon,
  });

  factory Allergen.fromJson(Map<String, dynamic> json) => _$AllergenFromJson(json);

  Map<String, dynamic> toJson() => _$AllergenToJson(this);
}
