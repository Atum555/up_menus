// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entity _$EntityFromJson(Map<String, dynamic> json) => Entity(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String?,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
      establishments: (json['establishments'] as List<dynamic>)
          .map((e) => Establishment.fromJson(e as Map<String, dynamic>))
          .toList(),
      supervisingEstablishments:
          (json['supervisingEstablishments'] as List<dynamic>)
              .map((e) => Establishment.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'address': instance.address,
      'contacts': instance.contacts,
      'establishments': instance.establishments,
      'supervisingEstablishments': instance.supervisingEstablishments,
    };
