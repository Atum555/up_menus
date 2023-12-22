part of up_menus.models;

@JsonSerializable()
class Dish {
  int id;
  String? photo;
  @JsonKey(name: 'name_pt')
  String namePt;
  @JsonKey(name: 'name_en')
  String nameEn;
  String notes;

  Dish({
    required this.id,
    this.photo,
    required this.namePt,
    required this.nameEn,
    required this.notes,
  });

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);

  Map<String, dynamic> toJson() => _$DishToJson(this);
}

@JsonSerializable()
class DishType {
  int id;
  @JsonKey(name: 'name_pt')
  String namePt;
  @JsonKey(name: 'name_en')
  String nameEn;

  DishType({
    required this.id,
    required this.namePt,
    required this.nameEn,
  });

  factory DishType.fromJson(Map<String, dynamic> json) => _$DishTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DishTypeToJson(this);
}