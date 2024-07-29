part of up_menus.models;

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

  @override
  String toString() {
    return '<Contact>($type: $value)';
  }  
}

enum ContactType {
  @JsonValue('EMAIL')
  email,

  @JsonValue('MOBILEPHONE')
  mobilephone,

  @JsonValue('TELEPHONE')
  telephone,

  @JsonValue('PHONE_EXTENSION')
  phoneExtension
}
extension ContactTypeExtension on ContactType {
  String get value => _values[this]!;
}

const Map<ContactType, String> _values = {
  ContactType.email: 'EMAIL',
  ContactType.mobilephone: 'MOBILEPHONE',
  ContactType.telephone: 'TELEPHONE',
  ContactType.phoneExtension: 'PHONE_EXTENSION',
};

