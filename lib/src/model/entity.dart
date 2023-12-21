import 'package:json_annotation/json_annotation.dart';

import 'package:up_menus/src/model/address.dart';
import 'package:up_menus/src/model/contact.dart';
import 'package:up_menus/src/model/establishment.dart';

part 'entity.g.dart';

@JsonSerializable()
class Entity {
  int id;
  String name;
  String? logo;
  Address address;
  List<Contact> contacts;
  List<Establishment> establishments;
  List<Establishment> supervisingEstablishments;

  Entity({
    required this.id,
    required this.name,
    this.logo,
    required this.address,
    required this.contacts,
    required this.establishments,
    required this.supervisingEstablishments,
  });

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

  Map<String, dynamic> toJson() => _$EntityToJson(this);
}