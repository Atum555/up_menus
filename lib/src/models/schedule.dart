part of up_menus.models;

@JsonSerializable()
class Schedule {
  int id;
  Period? period;
  String startHour;
  String finishHour;

  Schedule({
    required this.id,
    this.period,
    required this.startHour,
    required this.finishHour,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}