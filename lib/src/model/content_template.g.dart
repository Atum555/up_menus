// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTemplate _$ContentTemplateFromJson(Map<String, dynamic> json) =>
    ContentTemplate(
      id: json['id'] as int,
      name: json['name'] as String,
      periods: (json['periods'] as List<dynamic>)
          .map((e) => $enumDecode(_$PeriodEnumMap, e))
          .toList(),
      notes: json['notes'] as String,
      days: (json['days'] as List<dynamic>)
          .map((e) => WeekDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      dishTypes: (json['dishTypes'] as List<dynamic>)
          .map((e) => DishType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContentTemplateToJson(ContentTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'periods': instance.periods.map((e) => _$PeriodEnumMap[e]!).toList(),
      'notes': instance.notes,
      'days': instance.days,
      'dishTypes': instance.dishTypes,
    };

const _$PeriodEnumMap = {
  Period.lunch: 'lunch',
  Period.dinner: 'dinner',
  Period.breakfast: 'breakfast',
  Period.snackBar: 'snackBar',
};

WeekDay _$WeekDayFromJson(Map<String, dynamic> json) => WeekDay(
      id: json['id'] as int,
      order: json['order'] as int,
      acronymPt: json['acronymPt'] as String,
      acronymEn: json['acronymEn'] as String,
      namePt: json['namePt'] as String,
      nameEn: json['nameEn'] as String,
    );

Map<String, dynamic> _$WeekDayToJson(WeekDay instance) => <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'acronymPt': instance.acronymPt,
      'acronymEn': instance.acronymEn,
      'namePt': instance.namePt,
      'nameEn': instance.nameEn,
    };
