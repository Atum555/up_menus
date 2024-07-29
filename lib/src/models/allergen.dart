part of up_menus.models;

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

  @override
  String toString() {
    return "<Allergen>($namePt)";
  }
}
