import 'package:json_annotation/json_annotation.dart';

part 'contact.g.dart';

@JsonSerializable()
class Contact {
  int id;
  ContactType type;
  String value;

  Contact({
    required this.id,
    required this.type,
    required this.value,
  });

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);
}

enum ContactType {
  EMAIL,
  MOBILEPHONE,
  TELEPHONE,
  PHONE_EXTENSION,
}
