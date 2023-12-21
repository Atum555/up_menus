// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permanent_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PermanentMenu _$PermanentMenuFromJson(Map<String, dynamic> json) =>
    PermanentMenu(
      id: json['id'] as int,
      price: (json['price'] as num?)?.toDouble(),
      establishment:
          Establishment.fromJson(json['establishment'] as Map<String, dynamic>),
      dish: Dish.fromJson(json['dish'] as Map<String, dynamic>),
      menuCategory:
          MenuCategory.fromJson(json['menuCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PermanentMenuToJson(PermanentMenu instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'establishment': instance.establishment,
      'dish': instance.dish,
      'menuCategory': instance.menuCategory,
    };

MenuCategory _$MenuCategoryFromJson(Map<String, dynamic> json) => MenuCategory(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$MenuCategoryToJson(MenuCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
