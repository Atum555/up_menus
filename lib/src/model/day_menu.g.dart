// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayMenu _$DayMenuFromJson(Map<String, dynamic> json) => DayMenu(
      id: json['id'] as int,
      day: DateTime.parse(json['day'] as String),
      period: $enumDecode(_$PeriodEnumMap, json['period']),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      disabledReason: json['disabledReason'] as String?,
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DayMenuToJson(DayMenu instance) => <String, dynamic>{
      'id': instance.id,
      'day': instance.day.toIso8601String(),
      'period': _$PeriodEnumMap[instance.period]!,
      'status': _$StatusEnumMap[instance.status]!,
      'disabledReason': instance.disabledReason,
      'dishes': instance.dishes,
    };

const _$PeriodEnumMap = {
  Period.lunch: 'lunch',
  Period.dinner: 'dinner',
  Period.breakfast: 'breakfast',
  Period.snackBar: 'snackBar',
};

const _$StatusEnumMap = {
  Status.published: 'published',
  Status.disabled: 'disabled',
};

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) => MenuItem(
      dish: Dish.fromJson(json['dish'] as Map<String, dynamic>),
      dishType: DishType.fromJson(json['dishType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MenuItemToJson(MenuItem instance) => <String, dynamic>{
      'dish': instance.dish,
      'dishType': instance.dishType,
    };
