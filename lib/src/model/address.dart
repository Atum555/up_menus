import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  int id;
  String address;
  @JsonKey(name: 'postalCode')
  String postalCode;
  @JsonKey(name: 'postalDesignation')
  String postalDesignation;
  String city;
  String coordinates;

  Address({
    required this.id,
    required this.address,
    required this.postalCode,
    required this.postalDesignation,
    required this.city,
    required this.coordinates,
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}