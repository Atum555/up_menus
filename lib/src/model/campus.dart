import 'package:json_annotation/json_annotation.dart';

import 'package:up_menus/src/model/establishment.dart';

part 'campus.g.dart';

@JsonSerializable()
class Campus {
  int id;
  String name;
  List<Establishment>? establishments;

  Campus({
    required this.id,
    required this.name,
    required this.establishments,
  });

  factory Campus.fromJson(Map<String, dynamic> json) => _$CampusFromJson(json);

  Map<String, dynamic> toJson() => _$CampusToJson(this);
}