import 'package:json_annotation/json_annotation.dart';

import 'package:up_menus/src/model/address.dart';
import 'package:up_menus/src/model/campus.dart';
import 'package:up_menus/src/model/contact.dart';
import 'package:up_menus/src/model/schedule.dart';

part 'establishment.g.dart';

@JsonSerializable()
class Establishment {
  int id;
  @JsonKey(name: 'name_pt')
  String namePt;
  @JsonKey(name: 'name_en')
  String nameEn;
  Type type;
  Address address;
  Campus campus;
  List<Contact> contacts;
  List<Schedule> schedules;
  int capacity;
  bool permanentMenu;
  bool dayMenu;

  Establishment({
    required this.id,
    required this.namePt,
    required this.nameEn,
    required this.type,
    required this.address,
    required this.campus,
    required this.contacts,
    required this.schedules,
    required this.capacity,
    required this.permanentMenu,
    required this.dayMenu,
  });

  factory Establishment.fromJson(Map<String, dynamic> json) => _$EstablishmentFromJson(json);

  Map<String, dynamic> toJson() => _$EstablishmentToJson(this);
}

@JsonSerializable()
class Type {
  int id;
  @JsonKey(name: 'name_pt')
  String namePt;
  @JsonKey(name: 'name_en')
  String nameEn;

  Type({
    required this.id,
    required this.namePt,
    required this.nameEn,
  });

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}
