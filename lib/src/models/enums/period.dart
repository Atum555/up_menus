import 'package:json_annotation/json_annotation.dart';

enum Period {
  @JsonValue("LUNCH")
  lunch,

  @JsonValue("DINNER")
  dinner,

  @JsonValue("BREAKFAST")
  breakfast,

  @JsonValue("SNACK")
  snackBar;
}

extension PeriodExtension on Period {
  String get value => _values[this]!;
} 

const Map<Period, String> _values = {
  Period.lunch: 'LUNCH',
  Period.dinner: 'DINNER',
  Period.breakfast: 'BREAKFAST',
  Period.snackBar: 'SNACK',
};


