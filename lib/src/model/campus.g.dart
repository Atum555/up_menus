// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Campus _$CampusFromJson(Map<String, dynamic> json) => Campus(
      id: json['id'] as int,
      name: json['name'] as String,
      establishments: (json['establishments'] as List<dynamic>?)
          ?.map((e) => Establishment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CampusToJson(Campus instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'establishments': instance.establishments,
    };
