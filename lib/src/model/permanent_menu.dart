import 'package:json_annotation/json_annotation.dart';

import 'package:up_menus/src/model/establishment.dart';
import 'package:up_menus/src/model/dish.dart';

part 'permanent_menu.g.dart';

@JsonSerializable()
class PermanentMenu {
  int id;
  double? price;
  Establishment establishment;
  Dish dish;
  MenuCategory menuCategory;

  PermanentMenu({
    required this.id,
    this.price,
    required this.establishment,
    required this.dish,
    required this.menuCategory,
  });

  factory PermanentMenu.fromJson(Map<String, dynamic> json) => _$PermanentMenuFromJson(json);

  Map<String, dynamic> toJson() => _$PermanentMenuToJson(this);
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
}
