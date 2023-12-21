// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allergen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Allergen _$AllergenFromJson(Map<String, dynamic> json) => Allergen(
      id: json['id'] as int,
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$AllergenToJson(Allergen instance) => <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
      'color': instance.color,
      'icon': instance.icon,
    };
