// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
      id: json['id'] as int,
      period: $enumDecodeNullable(_$PeriodEnumMap, json['period']),
      startHour: json['startHour'] as String,
      finishHour: json['finishHour'] as String,
    );

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'id': instance.id,
      'period': _$PeriodEnumMap[instance.period],
      'startHour': instance.startHour,
      'finishHour': instance.finishHour,
    };

const _$PeriodEnumMap = {
  Period.lunch: 'lunch',
  Period.dinner: 'dinner',
  Period.breakfast: 'breakfast',
  Period.snackBar: 'snackBar',
};
