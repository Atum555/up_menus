// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      id: json['id'] as int,
      address: json['address'] as String,
      postalCode: json['postalCode'] as String,
      postalDesignation: json['postalDesignation'] as String,
      city: json['city'] as String,
      coordinates: json['coordinates'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'postalDesignation': instance.postalDesignation,
      'city': instance.city,
      'coordinates': instance.coordinates,
    };
