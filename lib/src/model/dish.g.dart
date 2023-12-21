// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dish _$DishFromJson(Map<String, dynamic> json) => Dish(
      id: json['id'] as int,
      photo: json['photo'] as String?,
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$DishToJson(Dish instance) => <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
      'notes': instance.notes,
    };

DishType _$DishTypeFromJson(Map<String, dynamic> json) => DishType(
      id: json['id'] as int,
      namePt: json['name_pt'] as String,
      nameEn: json['name_en'] as String,
    );

Map<String, dynamic> _$DishTypeToJson(DishType instance) => <String, dynamic>{
      'id': instance.id,
      'name_pt': instance.namePt,
      'name_en': instance.nameEn,
    };
