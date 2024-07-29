part of up_menus.models;

@JsonSerializable()
class PermanentMenu {
  int id;
  double? price;
  Establishment establishment;
  Dish dish;
  MenuCategory? menuCategory;

  PermanentMenu({
    required this.id,
    this.price,
    required this.establishment,
    required this.dish,
    this.menuCategory,
  });

  factory PermanentMenu.fromJson(Map<String, dynamic> json) => _$PermanentMenuFromJson(json);

  Map<String, dynamic> toJson() => _$PermanentMenuToJson(this);

  @override
  String toString() {
    return '<PermanentMenu>($dish)';
  }
}

@JsonSerializable()
class MenuCategory {
  int id;
  String name;

  MenuCategory({
    required this.id,
    required this.name,
  });

  factory MenuCategory.fromJson(Map<String, dynamic> json) => _$MenuCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$MenuCategoryToJson(this);

  @override
  String toString() {
    return name;
  }
}
