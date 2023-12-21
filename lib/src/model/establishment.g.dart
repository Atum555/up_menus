// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Establishment _$EstablishmentFromJson(Map<String, dynamic> json) =>
    Establishment(
      id: json['id'] as int,
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
      type: Type.fromJson(json['type'] as Map<String, dynamic>),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      campus: Campus.fromJson(json['campus'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
      schedules: (json['schedules'] as List<dynamic>)
          .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      capacity: json['capacity'] as int,
      permanentMenu: json['permanentMenu'] as bool,
      dayMenu: json['dayMenu'] as bool,
    );

Map<String, dynamic> _$EstablishmentToJson(Establishment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
      'type': instance.type,
      'address': instance.address,
      'campus': instance.campus,
      'contacts': instance.contacts,
      'schedules': instance.schedules,
      'capacity': instance.capacity,
      'permanentMenu': instance.permanentMenu,
      'dayMenu': instance.dayMenu,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      id: json['id'] as int,
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
    };
