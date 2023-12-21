import 'package:json_annotation/json_annotation.dart';

import 'package:up_menus/src/model/dish.dart';
import 'package:up_menus/src/model/enums/period.dart';
import 'package:up_menus/src/model/enums/status.dart';

part 'day_menu.g.dart';

@JsonSerializable()
class DayMenu {
  int id;
  @JsonKey(name: 'day')
  DateTime day;
  Period period;
  Status status;
  String? disabledReason;
  List<MenuItem> dishes;

  DayMenu({
    required this.id,
    required this.day,
    required this.period,
    required this.status,
    this.disabledReason,
    required this.dishes,
  });

  factory DayMenu.fromJson(Map<String, dynamic> json) => _$DayMenuFromJson(json);

  Map<String, dynamic> toJson() => _$DayMenuToJson(this);
}

@JsonSerializable()
class MenuItem {
  Dish dish;
  DishType dishType;

  MenuItem({
    required this.dish,
    required this.dishType,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);

  Map<String, dynamic> toJson() => _$MenuItemToJson(this);
}