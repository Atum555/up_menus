// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      id: json['id'] as int,
      type: $enumDecode(_$ContactTypeEnumMap, json['type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'type': _$ContactTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$ContactTypeEnumMap = {
  ContactType.EMAIL: 'EMAIL',
  ContactType.MOBILEPHONE: 'MOBILEPHONE',
  ContactType.TELEPHONE: 'TELEPHONE',
  ContactType.PHONE_EXTENSION: 'PHONE_EXTENSION',
};
