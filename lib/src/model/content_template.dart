// content_template.dart
import 'package:json_annotation/json_annotation.dart';

import 'package:up_menus/src/model/dish.dart';
import 'package:up_menus/src/model/enums/period.dart';

part 'content_template.g.dart';

@JsonSerializable()
class ContentTemplate {
  int id;
  String name;
  List<Period> periods;
  String notes;
  List<WeekDay> days;
  List<DishType> dishTypes;

  ContentTemplate({
    required this.id,
    required this.name,
    required this.periods,
    required this.notes,
    required this.days,
    required this.dishTypes,
  });

  factory ContentTemplate.fromJson(Map<String, dynamic> json) => _$ContentTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ContentTemplateToJson(this);
}

@JsonSerializable()
class WeekDay {
  int id;
  int order;
  String acronymPt;
  String acronymEn;
  String namePt;
  String nameEn;

  WeekDay({
    required this.id,
    required this.order,
    required this.acronymPt,
    required this.acronymEn,
    required this.namePt,
    required this.nameEn,
  });

  factory WeekDay.fromJson(Map<String, dynamic> json) => _$WeekDayFromJson(json);

  Map<String, dynamic> toJson() => _$WeekDayToJson(this);
}