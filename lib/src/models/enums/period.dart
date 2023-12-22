enum Period {
  lunch,
  dinner,
  breakfast,
  snackBar,
}

const _periodEnumMap = {
  'lunch': Period.lunch,
  'dinner': Period.dinner,
  'breakfast': Period.breakfast,
  'snackBar': Period.snackBar,
};

Period periodFromJson(String? json) => _periodEnumMap[json] ?? Period.lunch;

String periodToJson(Period? instance) => _periodEnumMap.keys.firstWhere(
      (k) => _periodEnumMap[k] == instance,
      orElse: () => 'lunch',
    );
